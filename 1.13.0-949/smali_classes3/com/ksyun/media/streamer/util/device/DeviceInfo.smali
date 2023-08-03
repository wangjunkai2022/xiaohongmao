.class public Lcom/ksyun/media/streamer/util/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final BAND_VALUE:Ljava/lang/String; = "band"

.field public static final ENCODE_264_VALUE:Ljava/lang/String; = "264hw_enc"

.field public static final ENCODE_265_VALUE:Ljava/lang/String; = "265hw_enc"

.field public static final ENCODE_HW_SUPPORT:I = 0x1

.field public static final ENCODE_HW_UNSUPPORT:I


# instance fields
.field public band:Ljava/lang/String;

.field public decode:I

.field public encode_h264:I

.field public encode_h265:I

.field public model:Ljava/lang/String;

.field public osver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->model:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->osver:Ljava/lang/String;

    const-string p2, "264hw_enc"

    const/4 p3, 0x0

    .line 16
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h264:I

    const-string p2, "265hw_enc"

    .line 17
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h265:I

    const-string p2, "band"

    const-string p3, ""

    .line 18
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->band:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->model:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->osver:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h264:I

    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->band:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->model:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->osver:Ljava/lang/String;

    :try_start_0
    const-string p2, "band"

    .line 9
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->band:Ljava/lang/String;

    const-string p2, "264hw_enc"

    .line 10
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h264:I

    const-string p2, "265hw_enc"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h265:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public compareDeviceInfo(Lcom/ksyun/media/streamer/util/device/DeviceInfo;)Z
    .locals 2

    iget v0, p1, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h264:I

    iget v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h264:I

    if-ne v0, v1, :cond_1

    iget p1, p1, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h265:I

    iget v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h265:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public printDeviceInfo()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(model)_"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->osver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(osver)_"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->band:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(band)_"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h264:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(encode_h264)"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h265:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(encode_h265)"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveDeviceInfoForLocal(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h264:I

    const-string v1, "264hw_enc"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->encode_h265:I

    const-string v1, "265hw_enc"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->band:Ljava/lang/String;

    const-string v1, "band"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
