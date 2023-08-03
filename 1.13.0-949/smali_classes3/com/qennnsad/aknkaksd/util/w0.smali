.class public final Lcom/qennnsad/aknkaksd/util/w0;
.super Ljava/lang/Object;
.source "ObservableUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "T",
        "Lio/reactivex/f0;",
        "b",
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
.method public static synthetic a(Lio/reactivex/z;)Lio/reactivex/e0;
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/util/w0;->c(Lio/reactivex/z;)Lio/reactivex/e0;

    move-result-object p0

    return-object p0
.end method

.method public static final b()Lio/reactivex/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/f0<",
            "TT;TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/v0;->a:Lcom/qennnsad/aknkaksd/util/v0;

    return-object v0
.end method

.method private static final c(Lio/reactivex/z;)Lio/reactivex/e0;
    .locals 1

    const-string v0, "observable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p0

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method
