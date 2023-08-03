package com.ksyun.media.streamer.filter.imgtex;

import android.content.Context;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgBeautySpecialEffectsFilter extends ImgBeautyLookUpFilter {
    public static final int KSY_SPECIAL_EFFECT_AMATORKA = 14;
    public static final int KSY_SPECIAL_EFFECT_BEAUTY = 2;
    public static final int KSY_SPECIAL_EFFECT_BLUE = 5;
    public static final int KSY_SPECIAL_EFFECT_ELEGANCE = 15;
    public static final int KSY_SPECIAL_EFFECT_FRESHY = 1;
    public static final int KSY_SPECIAL_EFFECT_KTV = 17;
    public static final int KSY_SPECIAL_EFFECT_LIGHTING = 16;
    public static final int KSY_SPECIAL_EFFECT_NATURE = 13;
    public static final int KSY_SPECIAL_EFFECT_NOSTALGIA = 6;
    public static final int KSY_SPECIAL_EFFECT_RUDDY = 11;
    public static final int KSY_SPECIAL_EFFECT_RUDDY_NIGHT = 9;
    public static final int KSY_SPECIAL_EFFECT_SAKURA = 7;
    public static final int KSY_SPECIAL_EFFECT_SAKURA_NIGHT = 8;
    public static final int KSY_SPECIAL_EFFECT_SEPIA = 4;
    public static final int KSY_SPECIAL_EFFECT_SUNSHINE_NIGHT = 10;
    public static final int KSY_SPECIAL_EFFECT_SUSHINE = 12;
    public static final int KSY_SPECIAL_EFFECT_SWEETY = 3;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46396a = "assets://KSYResource/";

    /* renamed from: b  reason: collision with root package name */
    private int f46397b;

    /* renamed from: c  reason: collision with root package name */
    private String f46398c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f46399d;

    public ImgBeautySpecialEffectsFilter(GLRender gLRender, Context context, int i4) {
        super(gLRender, context);
        this.f46397b = 0;
        this.f46398c = null;
        this.f46399d = false;
        setSpecialEffect(i4);
    }

    private void a(String str) {
        setLookupBitmap("assets://KSYResource/" + str);
    }

    public String getSpecialName() {
        return this.f46398c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgBeautyLookUpFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        this.f46399d = false;
        this.f46397b = 0;
        this.f46398c = null;
    }

    public void setSpecialEffect(int i4) {
        if (this.f46397b != i4) {
            this.f46397b = i4;
            setLookupBitmap(a(i4));
            if (this.f46399d) {
                StatsLogReport.getInstance().updateBeautyType(getClass().getSimpleName(), this.f46398c);
            }
        }
    }

    public void setTakeEffect(boolean z9) {
        this.f46399d = z9;
    }

    private String a(int i4) {
        String str;
        switch (i4) {
            case 1:
                str = "1_freshy";
                break;
            case 2:
                str = "2_beauty";
                break;
            case 3:
                str = "3_sweety";
                break;
            case 4:
                str = "4_sepia";
                break;
            case 5:
                str = "5_blue";
                break;
            case 6:
                str = "6_nostalgia";
                break;
            case 7:
                str = "7_sakura";
                break;
            case 8:
                str = "8_sakura_night";
                break;
            case 9:
                str = "9_ruddy_night";
                break;
            case 10:
                str = "10_sunshine_night";
                break;
            case 11:
                str = "11_ruddy";
                break;
            case 12:
                str = "12_sunshine";
                break;
            case 13:
                str = "13_nature";
                break;
            case 14:
                str = "14_amatorka";
                break;
            case 15:
                str = "15_elegance_1";
                break;
            case 16:
                str = "16_lighting";
                break;
            case 17:
                str = "17_ktv";
                break;
            default:
                str = null;
                break;
        }
        this.f46398c = str;
        return "assets://KSYResource/" + str + ".png";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImgBeautySpecialEffectsFilter(GLRender gLRender, Context context, String str) {
        super(gLRender, context);
        this.f46397b = 0;
        this.f46398c = null;
        this.f46399d = false;
        a(str);
    }
}
