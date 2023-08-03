package com.ksyun.media.player;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import androidx.room.RoomMasterTable;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: KSYMediaCodecInfo.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static int f45501a = 1000;

    /* renamed from: b  reason: collision with root package name */
    public static final int f45502b = 800;

    /* renamed from: c  reason: collision with root package name */
    public static final int f45503c = 700;

    /* renamed from: d  reason: collision with root package name */
    public static final int f45504d = 600;

    /* renamed from: e  reason: collision with root package name */
    public static final int f45505e = 300;

    /* renamed from: f  reason: collision with root package name */
    public static final int f45506f = 200;

    /* renamed from: g  reason: collision with root package name */
    public static final int f45507g = 100;

    /* renamed from: h  reason: collision with root package name */
    public static final int f45508h = 0;

    /* renamed from: l  reason: collision with root package name */
    private static final String f45509l = "KSYMediaCodecInfo";

    /* renamed from: m  reason: collision with root package name */
    private static Map<String, Integer> f45510m;

    /* renamed from: i  reason: collision with root package name */
    public MediaCodecInfo f45511i;

    /* renamed from: j  reason: collision with root package name */
    public int f45512j = 0;

    /* renamed from: k  reason: collision with root package name */
    public String f45513k;

    public static String a(int i4) {
        return i4 != 1 ? i4 != 2 ? i4 != 4 ? i4 != 8 ? i4 != 16 ? i4 != 32 ? i4 != 64 ? "Unknown" : "High444" : "High422" : "High10" : "High" : "Extends" : "Main" : "Baseline";
    }

    private static synchronized Map<String, Integer> a() {
        synchronized (f.class) {
            Map<String, Integer> map = f45510m;
            if (map != null) {
                return map;
            }
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            f45510m = treeMap;
            treeMap.put("OMX.Nvidia.h264.decode", 800);
            f45510m.put("OMX.Nvidia.h264.decode.secure", 300);
            f45510m.put("OMX.Intel.hw_vd.h264", Integer.valueOf((int) IMediaPlayer.MEDIA_INFO_NOT_SEEKABLE));
            f45510m.put("OMX.Intel.VideoDecoder.AVC", 800);
            f45510m.put("OMX.qcom.video.decoder.avc", 800);
            f45510m.put("OMX.ittiam.video.decoder.avc", 0);
            f45510m.put("OMX.SEC.avc.dec", 800);
            f45510m.put("OMX.SEC.AVC.Decoder", 799);
            f45510m.put("OMX.SEC.avcdec", 798);
            f45510m.put("OMX.SEC.avc.sw.dec", 200);
            f45510m.put("OMX.SEC.hevc.sw.dec", 200);
            f45510m.put("OMX.Exynos.avc.dec", 800);
            f45510m.put("OMX.Exynos.AVC.Decoder", 799);
            f45510m.put("OMX.k3.video.decoder.avc", 800);
            f45510m.put("OMX.IMG.MSVDX.Decoder.AVC", 800);
            f45510m.put("OMX.TI.DUCATI1.VIDEO.DECODER", 800);
            f45510m.put("OMX.rk.video_decoder.avc", 800);
            f45510m.put("OMX.amlogic.avc.decoder.awesome", 800);
            f45510m.put("OMX.MARVELL.VIDEO.HW.CODA7542DECODER", 800);
            f45510m.put("OMX.MARVELL.VIDEO.H264DECODER", 200);
            f45510m.remove("OMX.Action.Video.Decoder");
            f45510m.remove("OMX.allwinner.video.decoder.avc");
            f45510m.remove("OMX.BRCM.vc4.decoder.avc");
            f45510m.remove("OMX.brcm.video.h264.hw.decoder");
            f45510m.remove("OMX.brcm.video.h264.decoder");
            f45510m.remove("OMX.cosmo.video.decoder.avc");
            f45510m.remove("OMX.duos.h264.decoder");
            f45510m.remove("OMX.hantro.81x0.video.decoder");
            f45510m.remove("OMX.hantro.G1.video.decoder");
            f45510m.remove("OMX.hisi.video.decoder");
            f45510m.remove("OMX.LG.decoder.video.avc");
            f45510m.remove("OMX.MS.AVC.Decoder");
            f45510m.remove("OMX.RENESAS.VIDEO.DECODER.H264");
            f45510m.remove("OMX.RTK.video.decoder");
            f45510m.remove("OMX.sprd.h264.decoder");
            f45510m.remove("OMX.ST.VFM.H264Dec");
            f45510m.remove("OMX.vpu.video_decoder.avc");
            f45510m.remove("OMX.WMT.decoder.avc");
            f45510m.remove("OMX.bluestacks.hw.decoder");
            f45510m.put("OMX.google.h264.decoder", 200);
            f45510m.put("OMX.google.h264.lc.decoder", 200);
            f45510m.put("OMX.k3.ffmpeg.decoder", 200);
            f45510m.put("OMX.ffmpeg.video.decoder", 200);
            f45510m.put("OMX.sprd.soft.h264.decoder", 200);
            return f45510m;
        }
    }

    public static String b(int i4) {
        if (i4 != 1) {
            if (i4 != 2) {
                switch (i4) {
                    case 4:
                        return "11";
                    case 8:
                        return "12";
                    case 16:
                        return "13";
                    case 32:
                        return "2";
                    case 64:
                        return "21";
                    case 128:
                        return "22";
                    case 256:
                        return "3";
                    case 512:
                        return "31";
                    case 1024:
                        return "32";
                    case 2048:
                        return g5.h.f67840d;
                    case 4096:
                        return "41";
                    case 8192:
                        return RoomMasterTable.DEFAULT_ID;
                    case 16384:
                        return g5.h.f67841e;
                    case 32768:
                        return "51";
                    case 65536:
                        return "52";
                    default:
                        return "0";
                }
            }
            return "1b";
        }
        return "1";
    }

    @TargetApi(16)
    public static f a(MediaCodecInfo mediaCodecInfo, String str) {
        if (mediaCodecInfo != null) {
            String name = mediaCodecInfo.getName();
            if (TextUtils.isEmpty(name)) {
                return null;
            }
            String lowerCase = name.toLowerCase(Locale.US);
            int i4 = 600;
            if (!lowerCase.startsWith("omx.")) {
                i4 = 100;
            } else if (lowerCase.startsWith("omx.pv") || lowerCase.startsWith("omx.google.") || lowerCase.startsWith("omx.ffmpeg.") || lowerCase.startsWith("omx.k3.ffmpeg.") || lowerCase.startsWith("omx.avcodec.")) {
                i4 = 200;
            } else if (lowerCase.startsWith("omx.ittiam.")) {
                i4 = 0;
            } else if (lowerCase.startsWith("omx.mtk.")) {
                i4 = 800;
            } else {
                Integer num = a().get(lowerCase);
                if (num != null) {
                    i4 = num.intValue();
                } else {
                    try {
                        if (mediaCodecInfo.getCapabilitiesForType(str) != null) {
                            i4 = 700;
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
            f fVar = new f();
            fVar.f45511i = mediaCodecInfo;
            fVar.f45512j = i4;
            fVar.f45513k = str;
            return fVar;
        }
        return null;
    }

    @TargetApi(16)
    public void a(String str) {
        int i4;
        int i10;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        try {
            MediaCodecInfo.CodecCapabilities capabilitiesForType = this.f45511i.getCapabilitiesForType(str);
            if (capabilitiesForType == null || (codecProfileLevelArr = capabilitiesForType.profileLevels) == null) {
                i4 = 0;
                i10 = 0;
            } else {
                i4 = 0;
                i10 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                    if (codecProfileLevel != null) {
                        i4 = Math.max(i4, codecProfileLevel.profile);
                        i10 = Math.max(i10, codecProfileLevel.level);
                    }
                }
            }
            Log.i(f45509l, String.format(Locale.US, "%s", a(i4, i10)));
        } catch (Throwable unused) {
            Log.i(f45509l, "profile-level: exception");
        }
    }

    public static String a(int i4, int i10) {
        return String.format(Locale.US, " %s Profile Level %s (%d,%d)", a(i4), b(i10), Integer.valueOf(i4), Integer.valueOf(i10));
    }
}
