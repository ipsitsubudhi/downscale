#include "App.h"
#include <vector>
#include <iostream>
#include <chrono>
#include "implot.h"
#include <cmath>
#include <fstream>
#include <algorithm>
#include <string>

using namespace std;

int bucketSize;
float dropThreshold;
vector<double> xOriginal, yOriginal;
int rownum;
int maxPoints;

struct ImGraph : App {
    std::vector<double> displayedPathX, displayedPathY;
    std::vector<double> xDownsampled, yDownsampled;
    std::chrono::steady_clock::time_point lastUpdateTime;
    int currentIndex = 0;

    using App::App;

    void Start() override {
        lastUpdateTime = std::chrono::steady_clock::now();
    }

    void DownsampleData() {
        xDownsampled.clear();
        yDownsampled.clear();

        int totalPoints = displayedPathX.size();
        bucketSize = std::max(1, totalPoints / maxPoints);
        bool readjust = false;

        do {
            xDownsampled.clear();
            yDownsampled.clear();
            
            for (size_t i = 0; i < totalPoints; i += bucketSize) {
                size_t count = std::min((size_t)bucketSize, totalPoints - i);
                std::vector<std::pair<double, double>> bucket;

                for (size_t j = 0; j < count; ++j) {
                    bucket.emplace_back(displayedPathX[i + j], displayedPathY[i + j]);
                }

                if (bucket.empty()) continue;

                xDownsampled.push_back(bucket[0].first);
                yDownsampled.push_back(bucket[0].second);

                double lowestY = bucket[0].second, highestY = bucket[0].second;
                size_t troughIndex = 0, peakIndex = 0;

                for (size_t j = 1; j < bucket.size(); ++j) {
                    if (bucket[j].second < lowestY) {
                        lowestY = bucket[j].second;
                        troughIndex = j;
                    }
                    if (bucket[j].second > highestY) {
                        highestY = bucket[j].second;
                        peakIndex = j;
                    }
                }

                if (std::abs(highestY - lowestY) > dropThreshold) {
                    xDownsampled.push_back(bucket[troughIndex].first);
                    yDownsampled.push_back(bucket[troughIndex].second);
                    xDownsampled.push_back(bucket[peakIndex].first);
                    yDownsampled.push_back(bucket[peakIndex].second);
                }
            }

            if (xDownsampled.size() > maxPoints) {
                bucketSize += 1; 
                readjust = true;
            } else {
                readjust = false;
            }

        } while (readjust);
    }

    void Update() override {
        auto now = std::chrono::steady_clock::now();
        if (std::chrono::duration_cast<std::chrono::milliseconds>(now - lastUpdateTime).count() >= 1) {
            if (currentIndex < xOriginal.size()) { 
                displayedPathX.push_back(xOriginal[currentIndex]);
                displayedPathY.push_back(yOriginal[currentIndex]);
                currentIndex++;
            }
            lastUpdateTime = now;
        }
        ImGui::Begin("Machine Data & Graphs");
        ImGui::Text("Adjust Graph Parameters:");
        ImGui::SliderInt("Max Points", &maxPoints, 250, 5000);
        ImGui::SliderFloat("Drop Threshold", &dropThreshold, 0.1f, 5.0f);
        DownsampleData();
        
        ImGui::Text("Total Original Points: %d", (int)xOriginal.size());
        ImGui::Text("Total Downsampled Points: %d", (int)xDownsampled.size());
        ImGui::Text("Latest Tool Path X: %.2f", displayedPathX.empty() ? 0 : displayedPathX.back());
        if (!displayedPathX.empty()) {
            double xMin = *std::min_element(xDownsampled.begin(), xDownsampled.end());
            double xMax = *std::max_element(xDownsampled.begin(), xDownsampled.end());
            double yMin = *std::min_element(yDownsampled.begin(), yDownsampled.end());
            double yMax = *std::max_element(yDownsampled.begin(), yDownsampled.end());
            if (ImPlot::BeginPlot("Tool Path")) {
                ImPlot::SetupAxisLimits(ImAxis_X1, xMin, xMax, ImGuiCond_Always);
                ImPlot::SetupAxisLimits(ImAxis_Y1, yMin, yMax, ImGuiCond_Always);
                ImPlot::PushStyleColor(ImPlotCol_Line, ImVec4(0, 1, 0, 1));  
                ImPlot::PlotLine("Original Data", displayedPathX.data(), displayedPathY.data(), (int)displayedPathX.size());
                ImPlot::PopStyleColor();

                //std::cout << "Downsampled size: " << xDownsampled.size() << std::endl;
                ImPlot::PushStyleColor(ImPlotCol_Line, ImVec4(1, 0, 0, 1));  
                ImPlot::PlotLine("Downsampled Data", xDownsampled.data(), yDownsampled.data(), (int)xDownsampled.size());
                ImPlot::PopStyleColor();

                ImPlot::EndPlot();
            }
        }
        ImGui::End();
    }
};

void downsampler(vector<double> xInput, vector<double> yInput, int b, float c) {
    maxPoints=b;
    bucketSize = max(1, (int)ceil((double)xInput.size() / b));
    cout << "Total data points: " << (int)ceil((double)xInput.size() / b) << endl;
    cout << "Bucket size: " << bucketSize << endl;
    dropThreshold = c;
    xOriginal = xInput;
    yOriginal = yInput;
}

int main(int argc, char const *argv[]) {
    vector<double> xInput, yInput;
    string filename = "/home/ipsit-p-subudhi/Desktop/C-C++/implot2/implot_demos/demos/USDINRX.csv";

    ifstream file(filename);
    string line;
    bool skipFirstRow = true;

    if (!file.is_open()) {
        cerr << "Error: Unable to open CSV file!" << endl;
        return 1;
    }
    int rowNumber = 0;
    while (getline(file, line)) {
        rowNumber++;

        if (skipFirstRow) { 
            skipFirstRow = false;
            continue; 
        }

        stringstream ss(line);
        string value;
        vector<string> values;

        while (getline(ss, value, ',')) {
            values.push_back(value);
        }

        if (values.size() >= 6) {  
            try {
                xInput.push_back(stod(values[0])); 
                yInput.push_back(stod(values[4])); 
            } 
            catch (const exception& e) {
                cerr << "Error converting values at row " << rowNumber << ": " << e.what() << endl;
            }
        }
    }

    file.close();
    if (xInput.size() == yInput.size()) {
        downsampler(xInput, yInput, 500, 0.1);
    }
    else {
        cout << "Vector Misalignment: incorrect sizes" << endl;
    }
    ImGraph app("Machine Data & Graphs", 800, 600, argc, argv);
    app.Run();

    return 0;
}
