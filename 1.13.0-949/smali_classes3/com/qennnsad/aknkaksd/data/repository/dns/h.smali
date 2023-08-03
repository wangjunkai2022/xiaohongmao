.class public final Lcom/qennnsad/aknkaksd/data/repository/dns/h;
.super Ljava/lang/Object;
.source "OverseasDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0019B\u0011\u0008\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\u0007\u001a\u00020\u00052\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004J\u0006\u0010\u0008\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0005R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0011\u001a\u0008\u0018\u00010\u000eR\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/repository/dns/h;",
        "",
        "",
        "e",
        "Lkotlin/Function1;",
        "",
        "onComplete",
        "g",
        "i",
        "f",
        "",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;",
        "c",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;",
        "googleApiAvailableThread",
        "d",
        "Ljava/lang/Boolean;",
        "googleApiAvailable",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;)V",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final a:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->a:Lg5/a;

    const-string p1, "OverseasDetector"

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/qennnsad/aknkaksd/data/repository/dns/h;)Lg5/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->a:Lg5/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/qennnsad/aknkaksd/data/repository/dns/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic d(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->c:Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;

    return-void
.end method

.method public static synthetic h(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->g(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->i()V

    return-void
.end method

.method public final f()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://play.google.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v2, 0x3e8

    .line 3
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public final g(Lkotlin/jvm/functions/Function1;)Z
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->c:Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->b(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiAvailableThread didn\'t run: make sure `refreshGoogleAvailabilityStatus()` was invoked."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()V
    .locals 3

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;-><init>(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->c:Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;

    return-void
.end method
