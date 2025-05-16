---
tab_title: KataGo Workstation
title: "Building a Local AlphaGo: RTX 5070 Workstation Build & KataGo Benchmark"
date: 2025-05-15 21:00:00
featured_image: "/images/2025-05-16-katago-workstation-build-and-bench/author-tpu-rack.jpeg"
excerpt: Built an RTX 5070 + Ultra 7 workstation on a ~¥20,000 budget. KataGo inference speed boosted a hundredfold, creating an AI "divine assistant" gift for my amateur 6-dan uncle.
---

**TL;DR:** Built an RTX 5070 + Ultra 7 workstation on a ~¥20,000 budget. KataGo inference speed boosted a hundredfold, creating an AI "divine assistant" gift for my amateur 6-dan uncle.

[中文版本](/blog/katago-workstation-build-and-bench-zh/)

Ever since deciding to pursue my Master's at CMU last year, I've been keenly interested in AI applications, especially local deployment. One day in July, while browsing [r/localllama](https://www.reddit.com/r/LocalLLaMA/), it suddenly struck me – AlphaGo, which was all the rage before, is also AI, right? I wondered if there was an open-source version. Wouldn't it be fascinating to run it on my own computer? I could leverage the power of AI to relive the joy of victory I didn't quite get enough of when learning Go in elementary school 😆. A quick search revealed that while AlphaGo itself isn't open-source (the original model required hundreds of TPUs, so even if it were open-source, few could use it), there _is_ a community-replicated open-source model: [Katago](https://github.com/lightvector/KataGo). It's also more compressed than the original. Thanks to advancements in algorithms and hardware, KataGo can now run smoothly on consumer-grade hardware, surpassing top human players. Pleasantly surprised, a seed of an idea was planted in my mind.

In May 2025, I returned to Shanghai for two weeks. I pondered what meaningful gift I could bring for my uncle, whom I hadn't seen in five years, an amateur 6-dan Go enthusiast. So, I decided to build a workstation capable of running KataGo for him: meaningful, and it would also satisfy my PC building itch :).

## Build Philosophy

Since I decided to DIY, I was determined to achieve an effect distinct from pre-built brand machines or custom-assembled ones (otherwise, I'd risk getting an earful from my parents 🙃). The potential advantages of DIY are: 1) achieving higher specs than brand machines for the same budget; 2) using higher quality components than typical custom assemblies; 3) optimizing the configuration for specific use cases: paying only for the performance needed and leaving room for future upgrades. These "potential" advantages aren't automatic; they require careful design to be fully realized. If the sole requirement is to get a certain configuration (like an i7+5080) at the lowest price, then a custom assembly from JD.com will undoubtedly be cheaper than DIY.

**The Importance of Peripherals:** My goal is to give my uncle the best user experience, not the highest benchmark scores. Peripherals are crucial for user experience, so the budget should be allocated accordingly.

**Balance:** This computer won't just run KataGo; it also needs to handle various daily tasks. Therefore, a balanced configuration is needed to meet computing demands for the next ~5 years, rather than just buying the most powerful GPU and calling it a day.

**System-Level Value:** The most value-for-money computer isn't made of the most value-for-money individual parts because when evaluating a component's value, you need to consider the cost of the entire system. For example: an i9 is 20% faster than an i7 but 50% more expensive. If the i7 accounts for 25% of the total system cost, upgrading to an i9 increases the total system cost by 12.5% but boosts performance by 20%. For use cases that can fully utilize the i9, this upgrade is entirely worthwhile.

**Stability:** Since I'll be returning to Pittsburgh after building this PC and won't be able to handle after-sales issues, the components must be reliable, or at least easy to get warranty service for. Thus, I'll lean towards mature products from major brands.

## Specific Hardware Choices:

**CPU**

- **Firmly Choosing the Latest Process Node:** Buying an Intel 7 chip in 2025 feels a bit too tragic. Between the 14th Gen Core and Ultra 2, I decisively chose the Ultra 2 series, which uses TSMC's N3B process. The reason is that single-core performance, which is most relevant to daily experience, heavily relies on process advancements. An AI **workstation's** webpage loading speed can't be slower than a Mac Mini's, right? Hahahaha.
- **Ultra 5, 7, or 9?** - The clock speed differences among the three most representative models, Ultra 5 245, Ultra 7 265, and Ultra 9 285, are negligible. The main difference lies in the core count.

  | CPU Model   | P-Cores | E-Cores | Total Cores | Total Threads | MSRP |
  | :---------- | :------ | :------ | :---------- | :------------ | :--- |
  | Ultra 5 245 | 6       | 8       | 14          | 16            | $329 |
  | Ultra 7 265 | 8       | 12      | 20          | 28            | $419 |
  | Ultra 9 285 | 8       | 16      | 24          | 32            | $589 |

  Considering KataGo's inference primarily relies on GPU performance rather than CPU multi-core performance, the Ultra 7 265 offers the best value. The Ultra 9 285's extra 4 E-cores and higher price don't bring significant performance gains for our use case. Meanwhile, the Ultra 5 is missing two P-cores, and since this architecture doesn't support SMT, those might indeed be needed for daily tasks.

**Motherboard**

- Once the CPU is selected, the motherboard has the widest range of choices. For Ultra 2 chips, there are nearly [30 Z890/B860/M810 motherboards from ASUS alone](https://www.asus.com/microsite/motherboard/intel-ultra-series-2-arrow-lake-s-z890-h810-b860/v1/download/Z890-B860-H810-Motherboards.pdf?v=2), with prices ranging from 1000 to 5000 RMB. The differences are summarized as follows:
  - Platform: Z890 (CPU+RAM overclocking, Thunderbolt 5) > B860 (RAM overclocking only) > M810 (no overclocking support)
  - Series: Maximus > Strix ≈ ProArt > Tuf > Prime
- CPU overclocking offers very limited performance improvement (new-gen CPUs already have high base clocks), so I chose to forgo CPU overclocking. However, many AI applications (like LLM inference) are bottlenecked by memory bandwidth, making memory overclocking more useful. M810 platform motherboards, being super budget-friendly, cut too many features, so the mid-range B860 platform is recommended.

- **B860 Motherboard Choice:** Although the motherboard has less impact on performance compared to other components, all parts are installed on it. A good quality motherboard greatly helps the building experience, especially for someone like me who doesn't build PCs often. Good motherboards have extensive fool-proofing designs – if an interface fits, it's correct. The connectors are also more robust, giving me peace of mind during my somewhat forceful installation process 😆. Another point is that CPUs rarely fail (except for Core 13th and 14th gen 😆), while motherboards are relatively more like consumables. Finding a replacement motherboard for a CPU from a few years ago offers few choices and isn't cheap (the pain of a dead C620 motherboard 😭). Therefore, if you want the machine to last a long time with peace of mind, you should pair it with a good quality motherboard and pray it doesn't die. Considering these factors, I chose the flagship B860 platform board: ROG STRIX B860-F GAMING WIFI.

**Graphics Card (GPU)**

- Running KataGo only uses about 1 GB of VRAM, so 50-series and even older cards are usable. Because GPUs are currently overpriced, I opted for the "good enough" Prime RTX 5070 12G.

  | Model           | VRAM        | FP16 Tensor TFLOPS (FP32 Accumulate)             | MSRP (RMB)                                       | Market Price (RMB)                                 |
  | :-------------- | :---------- | :----------------------------------------------- | :----------------------------------------------- | :------------------------------------------------- |
  | **RTX 5090 D**  | 32 GB GDDR7 | 419.2 TFLOPS ([Wikipedia][1], [NVIDIA][2])       | From 16,499 RMB ([ITHome][3], [Sina Finance][4]) | 28,000 – 39,000 RMB ([36Kr][5], [Sina Finance][6]) |
  | **RTX 5080**    | 16 GB GDDR7 | 225.1 TFLOPS ([Wikipedia][1], [ZOL AI][7])       | From 8,299 RMB ([ITHome][3], [ITHome][8])        | ≈ 8,299 RMB ([ITHome][8])                          |
  | **RTX 5070 Ti** | 16 GB GDDR7 | 177.4 TFLOPS ([Wikipedia][1], [Sina Finance][9]) | From 6,299 RMB ([Sina Finance][9], [Sohu][10])   | 7,000 – 8,000 RMB ([Sohu][11])                     |
  | **RTX 5070**    | 12 GB GDDR7 | 123.9 TFLOPS ([Wikipedia][1], [Gamersky][12])    | From 4,599 RMB ([Gamersky][12])                  | ≈ 4,599 RMB ([SMZDM][13])                          |
  | **RTX 5060 Ti** | 16 GB GDDR7 | 92.9 TFLOPS¹                                     | From 3,599 RMB ([SMZDM Post][14])                | ≈ 3,400 RMB ([Zhihu][15])                          |

[1]: https://en.wikipedia.org/wiki/GeForce_RTX_50_series?utm_source=chatgpt.com "GeForce RTX 50 series"
[2]: https://www.nvidia.cn/geforce/graphics-cards/50-series/rtx-5090-d/?utm_source=chatgpt.com "GeForce RTX 5090 D Graphics Card | NVIDIA"
[3]: https://www.ithome.com/0/822/842.htm?utm_source=chatgpt.com "Starting from 16,499 RMB, NVIDIA RTX 5090 D Flagship Graphics Card China Pricing Announced - ITHome"
[4]: https://finance.sina.com.cn/tech/roll/2025-01-07/doc-ineecrxc4892622.shtml?utm_source=chatgpt.com "RTX 5090 Graphics Card Domestic Price Over 16,000 RMB! And 5080 from 8,299! - Sina Finance"
[5]: https://www.36kr.com/p/3282448252167043?utm_source=chatgpt.com "NVIDIA 5090 D Supply Suspended, E-commerce Price Skyrockets by 20,000 RMB in Three Days - 36Kr"
[6]: https://finance.sina.com.cn/tech/roll/2025-03-26/doc-ineqxtzs6212005.shtml?utm_source=chatgpt.com "NVIDIA RTX 5090/5090D 32G Graphics Card JD.com Discount Price 30,999 RMB - Sina Finance"
[7]: https://ai.zol.com.cn/936/9369103.html?utm_source=chatgpt.com "NVIDIA RTX 5090D Graphics Card China Version 16,499 RMB: AI Performance Reduced by 71% - ZOL"
[8]: https://m.ithome.com/html/827998.htm?utm_source=chatgpt.com "16,499 RMB / 8,299 RMB, NVIDIA GeForce RTX 5090 D / 5080 Flagship Graphics Cards First Sale"
[9]: https://finance.sina.com.cn/tech/roll/2025-02-19/doc-inekytki4990871.shtml?utm_source=chatgpt.com "From 6,299 RMB! China Version RTX 5070 Ti Graphics Card Price Announced - Sina Finance"
[10]: https://news.sohu.com/a/860933883_122004016?utm_source=chatgpt.com "RTX 5070 Ti China Pricing 6,299 RMB, Initial Supply Worrisome! - News"
[11]: https://www.sohu.com/a/861090461_438786?utm_source=chatgpt.com "NVIDIA RTX 5070 Ti China Pricing From 6,299 RMB, Sources Say Supply is Extremely Tight - Sohu"

[12]: https://www.gamersky.com/hardware/202503/1892485.shtml?utm_source=chatgpt.com "Rumor: RTX 5070 Graphics Card China Retail Price \"Basically Finalized\": 4,599 RMB - Gamersky"
[13]: https://www.smzdm.com/p/145647055/?utm_source=chatgpt.com "NVIDIA GeForce RTX 5070 Founders Edition Public Version Graphics Card Brand New..."
[14]: https://post.smzdm.com/p/axdlggmd?utm_source=chatgpt.com "Rumor: NVIDIA Has Confirmed RTX 5060 Ti China MSRP: 16GB and 8GB Versions are 3,599..."
[15]: https://www.zhihu.com/question/1896149871578281604?utm_source=chatgpt.com "NVIDIA RTX 5060 Ti Officially on Sale, China Price Starts at 3,199 RMB - Zhihu"

**Case**

- If you've already figured out this build has an ASUS theme, it's not hard to guess the case would be the PA401. Both this and the PA602 (which I use for my own server) are highly recommended! Great build quality, quiet fans, and a well-thought-out installation process. _(Correction: Original text mentioned PA402, but based on your parts list and later description, it's PA401.)_

**RAM**

- The CPU has two memory channels, so at least two RAM sticks are needed for full performance. For daily use, having enough RAM is more practical than extreme memory speed. 32 GB can handle most needs, but since it's a custom build, I went a bit more generous with 64 GB to create some distance from mainstream configurations. After comparing prices on JD.com, I chose the Micron (Crucial) 5600MHz 2x32GB kit.

**SSD**

- Both the motherboard and CPU support M.2 Gen 5. Although I don't expect a huge difference from Gen 4 in daily experience (maybe a one-second faster boot? Hahaha), I still wanted to try it out. A no-brainer choice: Samsung 9100 Pro.

**Power Supply (PSU)**

- Since PSUs aren't too expensive and don't get updated frequently, it's worth investing in a good one for future GPU upgrades or adding hard drives. The RTX 5070 requires a minimum of 650W, so 850W provides a comfortable margin. If you want to leave headroom for a 5090, go for 1000W. Another plus is that new standard PSUs (ATX 3.1) have a 600W GPU power cable, making installation more convenient; otherwise, you'd need two power cables and an adapter, which is slightly less elegant. After some brief research, I decided to support a domestic brand and got the Thermalright SP850W Platinum ATX 3.1.

**CPU Cooler**

- The Ultra 7 265 has low power consumption, only 65W (not planning to overclock), so the stock cooler is actually sufficient. However, I still bought one when I saw a suitable model: 1) for aesthetics, and 2) a larger cooler allows the fan speed to remain very low, making it quieter. Many coolers don't explicitly state LGA1851 compatibility, so the selection wasn't huge. After some research, I got the Thermalright Peerless Assassin 120. Tested and confirmed it fits LGA1851 without issues.

**Monitor**

- After getting used to Apple products, my standards for screen quality have noticeably increased, hahaha. The contenders for this build were two new 32-inch 4K screens Dell launched at CES this year: U3225QE and S3225QC. My experience after trying them: both are fantastic! The U3225QE's matte screen is very comfortable to look at, and its connectivity is powerful, perfect for connecting a laptop as a dock + 8 hours of office work a day. The S3225QC's glossy screen + OLED colors are beautiful, and the spatial audio speakers are stunning, making it great as an AV screen connected to a desktop. The decision: I'm keeping the U3225QE for myself, and the S3225QC goes to my uncle. Here's a parameter comparison:

  | Parameter            | S3225QC                                        | U3225QE                                                                                                                                                                 |
  | :------------------- | :--------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
  | Model                | S3225QC                                        | U3225QE                                                                                                                                                                 |
  | Screen Size          | 31.6 inches                                    | 31.5 inches                                                                                                                                                             |
  | Resolution           | 3840×2160                                      | 3840×2160                                                                                                                                                               |
  | Panel Type           | QD-OLED                                        | IPS Black                                                                                                                                                               |
  | Refresh Rate         | 120 Hz                                         | 120 Hz                                                                                                                                                                  |
  | Contrast Ratio       | Theoretically Infinite : 1                     | 3,000 : 1                                                                                                                                                               |
  | Response Time        | 0.03 ms (GtG)                                  | 5 ms (GtG)                                                                                                                                                              |
  | Color Gamut          | 99 % DCI-P3                                    | DCI-P3 99 % / sRGB 100 %                                                                                                                                                |
  | HDR Certification    | VESA DisplayHDR True Black 400                 | DisplayHDR 600                                                                                                                                                          |
  | Speakers             | Built-in 5×5 W                                 | No built-in speakers                                                                                                                                                    |
  | USB-C Power Delivery | Up to 90 W                                     | Up to 140 W                                                                                                                                                             |
  | Ports                | 2×HDMI 2.1, 1×DisplayPort 1.4, 1×USB-C (DP+PD) | 1×HDMI 2.1, 2×DisplayPort 1.4 (Input), 1×DisplayPort 1.4 (Output), 2×Thunderbolt 4 (Up/Downstream), 1×USB-C (KVM Upstream), 4×USB-A, 1×2.5 GbE RJ45, 1×3.5 mm Audio Out |
  | Market Price (RMB)   | ¥ 6,499                                        | ¥ 5,999                                                                                                                                                                 |

**Budget:** Around ¥20,000 for the host + peripherals.

## Configuration List

| Component           | Model Name                                 | Budget % |
| :------------------ | :----------------------------------------- | :------- |
| Monitor             | Dell S3225QC (31.6-inch 4K QD-OLED 120Hz)  | 31.0%    |
| Graphics Card (GPU) | ASUS PRIME RTX 5070 12G                    | 24.1%    |
| CPU                 | Intel Core Ultra 7 265                     | 12.3%    |
| Motherboard         | ASUS ROG STRIX B860-F WIFI                 | 9.6%     |
| RAM                 | Crucial 64GB (2x32GB) DDR5 5600MHz         | 6.2%     |
| SSD                 | Samsung 9100 PRO 1TB PCIe 5.0 NVMe         | 5.3%     |
| Keyboard & Mouse    | Logitech ALTO KEYS K98M + MX Master 3S     | 4.8%     |
| PSU                 | Thermalright SP850W Platinum ATX 3.1       | 3.0%     |
| Case                | ASUS ProArt PA401 (Wood & Metal Edition)   | 2.9%     |
| CPU Cooler          | Thermalright Peerless Assassin 120 (PA120) | 0.9%     |

---

## KataGo Installation Guide on Windows

To use KataGo happily, you need to get a few components sorted: 1) KataGo command-line program, 2) KataGo model weights, 3) KaTrain graphical interface. (If performance isn't a high priority, you can skip the earlier steps and directly install KaTrain using its built-in OpenCL backend. If you're willing to tinker, the TensorRT backend can be up to 2.5 times faster).

Step by step:

1.  First, download the latest KataGo program from Github. There are different download options based on your operating system and the acceleration library/backend used. For NVIDIA GPUs, the highest performing backend is TensorRT. For Windows, you can download [katago-v1.16.0-trt10.9.0-cuda12.8-windows-x64.zip](https://github.com/lightvector/KataGo/releases/download/v1.16.0/katago-v1.16.0-trt10.9.0-cuda12.8-windows-x64.zip). Here's a comparison of different backends:

    | Executable Name      | Platform       | Backend    | Build for Version | Notes                                                                                                     |
    | :------------------- | :------------- | :--------- | :---------------- | :-------------------------------------------------------------------------------------------------------- |
    | **katago-opencl**    | Linux, Windows | OpenCL     | —                 | General GPU acceleration, no specific drivers needed ([GitHub][1], [Zhihu Column][2], [CSDN Blog][3])     |
    | **katago-cuda12.5**  | Linux, Windows | CUDA       | 12.5              | Optimized for NVIDIA GPUs with CUDA 12.5 drivers installed ([GitHub][1], [Zhihu Col.][2], [CSDN Blog][3]) |
    | **katago-trt10.2.0** | Linux, Windows | TensorRT   | 10.2.0            | Highest throughput on GPUs supporting TensorRT 10.2.0 ([GitHub][1], [Zhihu Col.][2], [CSDN Blog][3])      |
    | **katago-cpu**       | Linux, Windows | Eigen      | —                 | Pure CPU fallback, runs without a GPU ([GitHub][1], [Zhihu Column][2], [CSDN Blog][3])                    |
    | **katago-cpu-avx2**  | Linux, Windows | Eigen AVX2 | —                 | Optimized for CPUs supporting AVX2 instruction set ([GitHub][1])                                          |

    [1]: https://github.com/lightvector/KataGo/releases/tag/v1.16.0 "Release New Training Data Gen, Metal Support, Many Bugfixes · lightvector/KataGo · GitHub"
    [2]: https://zhuanlan.zhihu.com/p/678161076?utm_source=chatgpt.com "Water Takes No Shape—KataGo Open Source Go AI Software Installation and Usage Guide - Zhihu Column"
    [3]: https://blog.csdn.net/nirendao/article/details/135326597?utm_source=chatgpt.com "How to Configure TensorRT Version of KataGo (Original) - CSDN Blog"

    From the naming, you can tell it needs to be paired with TensorRT 10.9.0 and CUDA 12.8 (actually, CUDNN is also required, or it won't run). This feels very much like doing AI work 😆.

2.  [Install Visual Studio](https://visualstudio.microsoft.com/downloads/), the Community version is fine. Running NVIDIA libraries requires DLL files provided by Visual Studio.

3.  Download the [CUDA Toolkit installer from the NVIDIA website](https://developer.nvidia.com/cuda-downloads?target_os=Windows&target_arch=x86_64&target_version=11&target_type=exe_local). CUDA is backward compatible, so even if you install a version newer than CUDA 12.8, it's okay.

4.  After successfully installing CUDA, [install CUDNN](https://developer.nvidia.com/cudnn-downloads?target_os=Windows&target_arch=x86_64&target_version=10&target_type=exe_local).

    - Note: After installing CUDNN, you need to copy the following files from the CUDNN folder to the CUDA installation directory:
      - `bin\cudnn*.dll (including cudnn64_9.dll)` → `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\vX.Y\bin`
      - `include\cudnn*.h` → `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\vX.Y\include`
      - `lib\cudnn*.lib` → `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\vX.Y\lib`
    - Update system environment variables:
      - Press Win + R, type `sysdm.cpl` and press Enter to open System Properties.
      - Switch to the "Advanced" tab and click "Environment Variables."
      - In "System variables," find and select `Path`, then click "Edit."
      - Click "New" and add the following path:
      - `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\vX.Y\bin`
      - Again, make sure to replace `vX.Y` with your actual CUDA version.
      - Click "OK" to save changes and close all dialog boxes.
    - Run `where cudnn64_9.dll` in the command prompt to ensure CUDNN can be called by other programs.

5.  Install TensorRT. First, [download it from here](https://developer.nvidia.com/tensorrt/download/10x), then follow these steps [(documentation)](https://docs.nvidia.com/deeplearning/tensorrt/latest/installing-tensorrt/installing.html#zip-file-installation):

    1.  Download the TensorRT ZIP package

        - Visit the [NVIDIA TensorRT download page](https://developer.nvidia.com/nvidia-tensorrt-download).
        - Select the version for Windows, for example:
          - `TensorRT-10.x.x.x.Windows.win10.cuda-11.8.zip`
          - `TensorRT-10.x.x.x.Windows.win10.cuda-12.9.zip`
        - After downloading, extract the ZIP package to your chosen installation directory. This will create a subdirectory named `TensorRT-10.x.x.x`. ([NVIDIA Docs][1])
          > **Note:**
          >
          > - `10.x.x.x` represents the TensorRT version number.
          > - `cuda-x.x` represents the corresponding CUDA version, e.g., 11.8 or 12.9.

    2.  Add TensorRT library files to the system PATH
        You can add the TensorRT library files to your system's PATH environment variable in one of two ways:

        Method 1: Add the lib path from the extracted directory to PATH

        1.  Press the **Windows key**, search for and open **"Edit the system environment variables"**.
        2.  In the window that appears, click **"Environment Variables…"**.
        3.  In the **"System variables"** section, find and select **"Path"**, then click **"Edit…"**.
        4.  Click **"New"** and add the following path:
            ```
            <Installation_Directory>\TensorRT-10.x.x.x\lib
            ```
        5.  Click **"OK"** repeatedly until all windows are closed.

        Method 2: Copy DLL files to the CUDA installation directory

        1.  Copy all `.dll` files from the `<Installation_Directory>\TensorRT-10.x.x.x\lib` directory to your CUDA installation directory, for example:
            ```
            C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\vX.Y\bin
            ```
            Where `vX.Y` is your CUDA version number, e.g., `v11.8`.
        2.  The CUDA installer usually adds its `bin` directory to the system PATH automatically.

    3.  Install the TensorRT Python package
        1.  Open a command prompt or terminal.
        2.  Navigate to the `<Installation_Directory>\TensorRT-10.x.x.x\python` directory.
        3.  Use pip to install the `.whl` file for your Python version, for example:
            ```
            python.exe -m pip install tensorrt-*-cp3x-none-win_amd64.whl
            ```
            Replace `cp3x` with your Python version, e.g., `cp310` for Python 3.10.

6.  At this point, KataGo is installed. You can now proceed to download model weights: https://katagotraining.org/networks/

    - Any model can be downloaded; the green highlighted ones are currently the strongest. The model prefix indicates the model architecture (e.g., kata1-b28c512nbt). Larger architectures have higher potential, but honestly, any model is strong enough.

7.  Find the KataGo program downloaded in step 1 and the KataGo model weights downloaded in step 6. Run a performance test to verify successful installation:
    - `.\katago.exe benchmark -model "path_to_weights"`

### KaTrain Graphical Interface

KaTrain is a graphical interface designed for KataGo. Download the installer from Github: [Katrain.exe](https://github.com/sanderland/katrain/releases)

After successful installation, launch it. Click the menu button in the top left corner to open the "General and Engine Settings" interface. Update the "KataGo executable path" and "KataGo model file path" to the files downloaded in steps 1 and 6. In "KataGo Engine Settings," the "Visits per move during analysis" can be increased from the default value. Return to the main interface, and all installations are complete!

## KataGo Performance Benchmark

KataGo has models of different architectures (sizes). The newest b28c512 series with the most parameters is the strongest. However, the previous generation b18c384 model is more efficient, able to test more variations in the same amount of time, making it suitable for comparing the pros and cons of different moves when hardware performance is limited.

Although the official Readme already spoils that TensorRT is currently the highest-performing backend, it doesn't specify how much advantage it has over OpenCL and CUDA on 50-series GPUs. If the difference isn't significant, one could entirely skip the hassle of setting up TensorRT. While generic backends are usable, how much of a boost does NVIDIA's TensorRT actually provide? This directly relates to the robustness of Jensen Huang's software moat. There's no contest as to whether CPUs or GPUs are faster at running CNNs, but are CPUs sufficient if the demands aren't high? With these two curiosities, I benchmarked all backends with both network architectures.

Another question is how many visits KataGo actually needs to be effective. I had ChatGPT summarize it, and the results are quite astounding – KataGo doesn't need much computing power to achieve superhuman levels. This summary is based on the 2020 version of the model; in 2024, [some netizens even say](https://forums.online-go.com/t/what-is-the-strength-of-katago/52023/3) the latest model can reach 8-dan strength with just one visit. For learning Go, the main significance of stacking more visits is to analyze the pros and cons of other moves on the board.

| Dan Level                                   | Suggested Visits/Move<sup>†</sup> | Primary Basis                                                                                                          | Notes                                                       |
| :------------------------------------------ | :-------------------------------- | :--------------------------------------------------------------------------------------------------------------------- | :---------------------------------------------------------- |
| 4 Dan                                       | ≈ 6 visits                        | portkata calibration formula (2020) ([GitHub][1])                                                                      | —                                                           |
| 5 Dan                                       | ≈ 8 visits                        | Ibid. ([GitHub][1])                                                                                                    | Blogger often uses "8 visits" for 5d practice               |
| 6 Dan                                       | ≈ 10 visits                       | Ibid. ([GitHub][1])                                                                                                    | —                                                           |
| 7 Dan                                       | ≈ 12 visits                       | Ibid. ([GitHub][1])                                                                                                    | —                                                           |
| 8 Dan                                       | ≈ 14 visits                       | Ibid. ([GitHub][1])                                                                                                    | —                                                           |
| 9 Dan                                       | ≈ 16 visits                       | Ibid.; tested to beat Zen7 9d ([GitHub][1])                                                                            |                                                             |
| Top Amateur / Near Pro                      | ≈ 128 visits                      | OGS discussion: tens to hundreds already surpass strongest amateurs ([Online Go Forum][2])                             | b28c512 adds +300 Elo ([Reddit][3])                         |
| **Superhuman**                              | **≥ 2,048 visits**                | OGS "Potential Rank Inflation" & Adversarial Policies Paper (2022) ([OGS][4], [OpenReview][5])                         | 72% adversarial win rate can still break                    |
| "Extreme Deduction"<br/>(Research / Mining) | 10,000 – 100,000 visits           | Researcher & L19 discussion: 10k+ significantly reduces occasional blunders, stabilizes ko fights ([L19][6], [L19][7]) | Diminishing returns, but good for long reads/flaw detection |

[1]: https://github.com/lightvector/KataGo/issues/321 "Android binary · Issue #321 · lightvector/KataGo · GitHub"
[2]: https://forums.online-go.com/t/what-is-the-strength-of-katago/52023?utm_source=chatgpt.com "What is the strength of KataGo? - Online Go Forum"
[3]: https://www.reddit.com/r/baduk/comments/1cm61jb/new_katago_b28c512_model_improved_katagos/?utm_source=chatgpt.com "New katago b28c512 model improved katago's strength as much as ..."
[4]: https://forums.online-go.com/t/potential-rank-inflation-on-ogs-or-how-to-beat-katago-with-one-simple-trick-free/45380?page=4 "Potential rank inflation on OGS or How To Beat KataGo With One Simple Trick (free)! - Page 4 - General Go Discussion - Online Go Forum"
[5]: https://openreview.net/forum?id=Kyz1SaAcnd&utm_source=chatgpt.com "Adversarial Policies Beat Professional-Level Go AIs - OpenReview"
[6]: https://lifein19x19.com/viewtopic.php?f=18&t=19284&utm_source=chatgpt.com "Katago's Inefficient Reversion - Life In 19x19"
[7]: https://lifein19x19.com/viewtopic.php?f=10&start=20&t=17488&utm_source=chatgpt.com "Developing weak AIs in KaTrain - Life In 19x19"

All results are from: `.\katago.exe benchmark -model path_to_model`

Because KataGo uses the MCTS algorithm, its performance can be somewhat affected by parallel computation. Therefore, the benchmarks report visits per second at the recommended thread count and the maximum visits per second. These two numbers are generally close.

### b18c384 Network

| Backend     | Device       | Rec. Threads | Visits/Sec (Rec. Threads) | Max Visits/Sec (Any Threads) | Speedup |
| :---------- | :----------- | :----------- | :------------------------ | :--------------------------- | :------ |
| Eigen (CPU) | Ultra 7 265  | 20           | 37.63                     | 37.63                        | 1.00x   |
| AVX2 (CPU)  | Ultra 7 265  | 20           | 51.66                     | 51.66                        | 1.37x   |
| Metal       | Apple M3 Max | 12           | 348.28                    | 348.28                       | 9.26x   |
| OpenCL      | RTX 5070     | 24           | 1250.27                   | ~1339                        | 33.24x  |
| CUDA        | RTX 5070     | 48           | 2294.01                   | ~2400                        | 60.97x  |
| TensorRT    | RTX 5070     | 64           | ~3262                     | ~3299                        | 86.72x  |

### b28c512 Network

| Backend     | Device       | Rec. Threads | Visits/Sec (Rec. Threads) | Max Visits/Sec (Any Threads) | Speedup |
| :---------- | :----------- | :----------- | :------------------------ | :--------------------------- | :------ |
| Eigen (CPU) | Ultra 7 265  | 16           | 13.48                     | ~15.13                       | 1.00x   |
| AVX2 (CPU)  | Ultra 7 265  | 20           | 22.05                     | 22.05                        | 1.64x   |
| Metal       | Apple M3 Max | 8            | 135.27                    | ~138.61                      | 10.04x  |
| OpenCL      | RTX 5070     | 24           | 580.03                    | ~580                         | 43.03x  |
| CUDA        | RTX 5070     | 24           | 926.79                    | ~962                         | 68.76x  |
| TensorRT    | RTX 5070     | 40           | 1397.10                   | ~1424                        | 103.66x |

From the benchmarks:

- Hardware acceleration provides significant performance improvement over pure CPU implementation: With Eigen as the baseline, AVX2 only offers about 1.4x and 1.6x speedup on the two networks, respectively, while GPU/dedicated acceleration libraries easily exceed 30x.
- On the RTX 5070, TensorRT delivers the highest inference throughput, achieving speedups of approximately 87x (b18c384) and 104x (b28c512), significantly outperforming generic CUDA (approx. 61x/69x) and OpenCL (approx. 33x/43x).
- Apple M3 Max's Metal backend also shows about 9–10x speedup compared to CPU, but there's still a noticeable gap compared to the RTX 5070's dedicated libraries, indicating that GPU-specific inference engines have a greater advantage in large-scale convolutional computations.
- When the network size increases (from b18c384 to b28c512), the relative speedup of GPU/acceleration libraries further improves, suggesting that heavier computational tasks can more fully utilize the parallel computing power of modern GPUs.
- The CPU is already competent for human-computer play, but analyzing variations of moves will be more demanding. Apple Silicon's performance is mostly adequate but still lags considerably behind discrete GPUs. For maximum performance, a discrete GPU + TensorRT is in a league of its own. One can't help but admire Jensen here 😆.

## Conclusion

Reflecting on the entire build and testing process, my biggest takeaway is how surprisingly powerful AI tools perform on consumer-grade hardware today. The immense development in algorithms and hardware since AlphaGo's debut has enabled AI models that once required data centers to be deployed and run smoothly on a personal computer in a single morning. And now, this process is replaying itself with LLMs. We've seen the 175B parameter GPT-3 from 2020 score only 43.9% on MMLU, while the 4B parameter Qwen 3 from 2025 achieves nearly 70%—with only 1/44th the parameters and capable of local inference on a single RTX 4090. This fully illustrates the leap in algorithms and hardware over five years. AI has already revolutionized the world of Go; former world champions have chosen to pursue MBAs at Tsinghua because they no longer find joy in playing Go. When everyone can run AI smarter than themselves on their own devices, what changes will it bring to the world?

Pondering this, while marveling at AI's magic, I inevitably feel some anxiety. The simplest prediction is that tasks that can be programmatically verified for correctness (like games, multiple-choice questions, writing code from tests) will foreseeably be rapidly solved and surpassed by AI once the RL environment is established. And with advancements in multimodality and computing power, RL environments will accommodate an increasing variety of tasks, even introducing AI judges for self-iteration. Thinking to the extreme, aren't humans just embodied intelligences trained through RL from birth? 😜 So, the bottlenecks for AI completely replacing humans are: (1) RL environments cannot yet simulate "Earth Online," (2) AI models cannot replicate human sensory input, and (3) model training lacks the decades-long, long-form contextual data that humans possess.

Thus, rational short-term responses include: 1) Be the one training these AIs, 2) Be the one using these AIs, 3) Stay far away from industries about to be disrupted 😆.

Mid-to-long-term responses lie in developing one's own cross-task/cross-industry/cross-domain experience, to take root in unique composite fields where AI lacks training data and environments.

Fear stems from the unknown – uncertainty about the future. In an era of great change brought by AI, the most reassuring thing is the ability to learn quickly. After all, in the foreseeable future, AI will still need people to train, maintain, and operate it.

If you have your own thoughts on AI development, or any questions or suggestions about the build 方案 in this article, feel free to leave a comment and discuss~

Looking forward to seeing you in the next blog post! The next one is planned to be about exploring Kaggle competitions in CMU's Intro to Deep Learning course 🚀
