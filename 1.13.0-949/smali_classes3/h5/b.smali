.class public final Lh5/b;
.super Ljava/lang/Object;
.source "CaptchaToken.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh5/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u000e\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;",
        "",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lh5/b$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string p0, "vC"

    goto :goto_1

    :cond_2
    const-string p0, "hC"

    goto :goto_1

    :cond_3
    const-string p0, "gC"

    :goto_1
    return-object p0
.end method
