.class public final Lc5/g;
.super Lc5/a;
.source "WebViewAuthInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lc5/g;",
        "Lc5/a;",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "",
        "urlParamOnly",
        "Lokhttp3/Response;",
        "b",
        "Lc5/b;",
        "authenticator",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lc5/b;Lg5/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final c:Lc5/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/b;Lg5/a;)V
    .locals 1
    .param p1    # Lc5/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "authenticator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lc5/a;-><init>(Lg5/a;)V

    .line 2
    iput-object p1, p0, Lc5/g;->c:Lc5/b;

    .line 3
    iput-object p2, p0, Lc5/g;->d:Lg5/a;

    return-void
.end method


# virtual methods
.method public b(Lokhttp3/Interceptor$Chain;Z)Lokhttp3/Response;
    .locals 1
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p2, "chain"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lc5/g;->c:Lc5/b;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lc5/b;->b(Lokhttp3/Interceptor$Chain;Z)Lokhttp3/Response;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lc5/j;->b(Lokhttp3/Response;)Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;

    move-result-object p1

    throw p1
.end method
