.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;
.source "ImgBeautySpecialEffectsFilter.java"


# static fields
.field public static final KSY_SPECIAL_EFFECT_AMATORKA:I = 0xe

.field public static final KSY_SPECIAL_EFFECT_BEAUTY:I = 0x2

.field public static final KSY_SPECIAL_EFFECT_BLUE:I = 0x5

.field public static final KSY_SPECIAL_EFFECT_ELEGANCE:I = 0xf

.field public static final KSY_SPECIAL_EFFECT_FRESHY:I = 0x1

.field public static final KSY_SPECIAL_EFFECT_KTV:I = 0x11

.field public static final KSY_SPECIAL_EFFECT_LIGHTING:I = 0x10

.field public static final KSY_SPECIAL_EFFECT_NATURE:I = 0xd

.field public static final KSY_SPECIAL_EFFECT_NOSTALGIA:I = 0x6

.field public static final KSY_SPECIAL_EFFECT_RUDDY:I = 0xb

.field public static final KSY_SPECIAL_EFFECT_RUDDY_NIGHT:I = 0x9

.field public static final KSY_SPECIAL_EFFECT_SAKURA:I = 0x7

.field public static final KSY_SPECIAL_EFFECT_SAKURA_NIGHT:I = 0x8

.field public static final KSY_SPECIAL_EFFECT_SEPIA:I = 0x4

.field public static final KSY_SPECIAL_EFFECT_SUNSHINE_NIGHT:I = 0xa

.field public static final KSY_SPECIAL_EFFECT_SUSHINE:I = 0xc

.field public static final KSY_SPECIAL_EFFECT_SWEETY:I = 0x3

.field private static final a:Ljava/lang/String; = "assets://KSYResource/"


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->b:I

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->c:Ljava/lang/String;

    .line 4
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->d:Z

    .line 5
    invoke-virtual {p0, p3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->setSpecialEffect(I)V

    return-void
.end method

.method constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->b:I

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->c:Ljava/lang/String;

    .line 9
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->d:Z

    .line 10
    invoke-direct {p0, p3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "17_ktv"

    goto :goto_0

    :pswitch_1
    const-string p1, "16_lighting"

    goto :goto_0

    :pswitch_2
    const-string p1, "15_elegance_1"

    goto :goto_0

    :pswitch_3
    const-string p1, "14_amatorka"

    goto :goto_0

    :pswitch_4
    const-string p1, "13_nature"

    goto :goto_0

    :pswitch_5
    const-string p1, "12_sunshine"

    goto :goto_0

    :pswitch_6
    const-string p1, "11_ruddy"

    goto :goto_0

    :pswitch_7
    const-string p1, "10_sunshine_night"

    goto :goto_0

    :pswitch_8
    const-string p1, "9_ruddy_night"

    goto :goto_0

    :pswitch_9
    const-string p1, "8_sakura_night"

    goto :goto_0

    :pswitch_a
    const-string p1, "7_sakura"

    goto :goto_0

    :pswitch_b
    const-string p1, "6_nostalgia"

    goto :goto_0

    :pswitch_c
    const-string p1, "5_blue"

    goto :goto_0

    :pswitch_d
    const-string p1, "4_sepia"

    goto :goto_0

    :pswitch_e
    const-string p1, "3_sweety"

    goto :goto_0

    :pswitch_f
    const-string p1, "2_beauty"

    goto :goto_0

    :pswitch_10
    const-string p1, "1_freshy"

    .line 2
    :goto_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->c:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets://KSYResource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets://KSYResource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->setLookupBitmap(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSpecialName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected onRelease()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->onRelease()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->d:Z

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->c:Ljava/lang/String;

    return-void
.end method

.method public setSpecialEffect(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->b:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->b:I

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->setLookupBitmap(Ljava/lang/String;)V

    .line 4
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->d:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateBeautyType([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTakeEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->d:Z

    return-void
.end method
