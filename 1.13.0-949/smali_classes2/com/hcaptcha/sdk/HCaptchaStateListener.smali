.class abstract Lcom/hcaptcha/sdk/HCaptchaStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V
.end method

.method public abstract onOpen()V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
