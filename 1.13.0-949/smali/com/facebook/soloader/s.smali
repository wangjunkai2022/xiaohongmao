.class public Lcom/facebook/soloader/s;
.super Lcom/facebook/soloader/v;
.source "NoopSoSource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/soloader/v;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public g(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unpacking not supported in test mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
