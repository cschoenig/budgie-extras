/*
 * BrightnessController 
 * This file is part of UbuntuBudgie
 * 
 * Author: Serdar ŞEN github.com/serdarsen
 * 
 * Copyright © 2018-2020 Ubuntu Budgie Developers
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 */
 
namespace BrightnessController.Models 
{
public class Dim : Flame
{
    public int Blue {get; set;}

    public static string[] Whitepoints={
        "1.0:0.18172716:0.0", /* 1000K */
        "1.00000000:0.42322816:0.00000000",
        "1.00000000:0.54360078:0.08679949",
        "1.00000000:0.64373109:0.28819679",
        "1.00000000:0.71976951:0.42860152",
        "1.00000000:0.77987699:0.54642268",
        "1.00000000:0.82854786:0.64816570",
        "1.00000000:0.86860704:0.73688797",
        "1.00000000:0.90198230:0.81465502",
        "1.00000000:0.93853986:0.88130458",
        "1.00000000:0.97107439:0.94305985",
        "1.00000000:1.00000000:1.00000000", /* 6500K */
        "0.95160805:0.96983355:1.00000000",
        "0.91194747:0.94470005:1.00000000",
        "0.87906581:0.92357340:1.00000000",
        "0.85139976:0.90559011:1.00000000",
        "0.82782969:0.89011714:1.00000000",
        "0.80753191:0.87667891:1.00000000",
        "0.78988728:0.86491137:1.00000000", /* 10000K */
        "0.77442176:0.85453121:1.00000000"
    };

    public string MaxBrightnessText 
    {
        owned get{return DoubleToString(MaxBrightness, "%.1f");}
    }

    public string BrightnessText 
    {
        owned get{return DoubleToString(Brightness, "%.0f%%");}
    }

    public string BlueText
    {
        owned get{return DoubleToString(Blue, "%.0f");}
    }

    public Dim()
    {
    }
}
}