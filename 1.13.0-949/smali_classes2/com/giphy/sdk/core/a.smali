.class public final Lcom/giphy/sdk/core/a;
.super Ljava/lang/Object;
.source "BuildConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\r\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u0011\u0010\u0011\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/giphy/sdk/core/a;",
        "",
        "",
        "b",
        "()Z",
        "DEBUG",
        "",
        "d",
        "()Ljava/lang/String;",
        "LIBRARY_PACKAGE_NAME",
        "a",
        "BUILD_TYPE",
        "c",
        "FLAVOR",
        "",
        "f",
        "()I",
        "VERSION_CODE",
        "e",
        "SDK_VERSION_NAME",
        "<init>",
        "()V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/giphy/sdk/core/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/core/a;

    invoke-direct {v0}, Lcom/giphy/sdk/core/a;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/a;->a:Lcom/giphy/sdk/core/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "release"

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "com.giphy.sdk.ui"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "2.1.9"

    return-object v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
