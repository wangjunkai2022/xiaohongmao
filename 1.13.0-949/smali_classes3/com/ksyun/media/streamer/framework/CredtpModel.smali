.class public Lcom/ksyun/media/streamer/framework/CredtpModel;
.super Ljava/lang/Object;
.source "CredtpModel.java"


# static fields
.field public static final BEAUTY_1977_FILTER:I = 0xe

.field public static final BEAUTY_ADJ_SKIN_COLOR_FILTER:I = 0xc

.field public static final BEAUTY_AMARO_FILTER:I = 0xf

.field public static final BEAUTY_BRANNAN_FILTER:I = 0x10

.field public static final BEAUTY_DENOISE_FILTER:I = 0x1

.field public static final BEAUTY_EARLY_BIRD_FILTER:I = 0x11

.field public static final BEAUTY_GRIND_ADVANCE_FILTER:I = 0xd

.field public static final BEAUTY_GRIND_FACE_FILTER:I = 0x9

.field public static final BEAUTY_GRIND_SIMPLE_FILTER:I = 0xb

.field public static final BEAUTY_HEFE_FILTER:I = 0x12

.field public static final BEAUTY_HUDSON_FILTER:I = 0x13

.field public static final BEAUTY_ILLUSION_FILTER:I = 0x3

.field public static final BEAUTY_INK_FILTER:I = 0x14

.field public static final BEAUTY_LOMO_FILTER:I = 0x15

.field public static final BEAUTY_LOOK_UP_FILTER:I = 0xa

.field public static final BEAUTY_LORD_KELVIN_FILTER:I = 0x16

.field public static final BEAUTY_NASHVILLE_FILTER:I = 0x17

.field public static final BEAUTY_RISE_FILTER:I = 0x18

.field public static final BEAUTY_SHAKE_70S:I = 0x22

.field public static final BEAUTY_SHAKE_COLOR:I = 0x1f

.field public static final BEAUTY_SHAKE_ILLUSION:I = 0x24

.field public static final BEAUTY_SHAKE_WAVE:I = 0x21

.field public static final BEAUTY_SHAKE_XSINGLE:I = 0x23

.field public static final BEAUTY_SHAKE_ZOOM:I = 0x20

.field public static final BEAUTY_SHARPEN_FILTER:I = 0x6

.field public static final BEAUTY_SIERRA_FILTER:I = 0x19

.field public static final BEAUTY_SKIN_DETECT_FILTER:I = 0x8

.field public static final BEAUTY_SKIN_WHITEN_FILTER:I = 0x4

.field public static final BEAUTY_SMOOTH_FILTER:I = 0x5

.field public static final BEAUTY_SOFT_EXT_FILTER:I = 0x7

.field public static final BEAUTY_SOFT_FILTER:I = 0x2

.field public static final BEAUTY_SUTRO_FILTER:I = 0x1a

.field public static final BEAUTY_TOASTER_FILTER:I = 0x1b

.field public static final BEAUTY_VALENCIA_FILTER:I = 0x1c

.field public static final BEAUTY_WALDEN_FILTER:I = 0x1d

.field public static final BEAUTY_XPROLL_FILTER:I = 0x1e


# instance fields
.field private body:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/CredtpModel;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/CredtpModel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/framework/CredtpModel;->type:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/CredtpModel;->body:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/CredtpModel;->key:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/framework/CredtpModel;->type:I

    return-void
.end method
