.class public final Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;
.source "DnsResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;-><init>(Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/dns/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a<",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0007\u001a\u00020\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\u0016\u0010\u0008\u001a\u00020\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "com/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        "",
        "",
        "onComplete",
        "response",
        "d",
        "f",
        "",
        "e",
        "Z",
        "success",
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
.field private e:Z

.field final synthetic f:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;->f:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;->d(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    const-string p1, "DnsResolver"

    const-string v0, "ping--Failure"

    .line 2
    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 5
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ping--onNext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsResolver"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "response.msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ok"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;->e:Z

    const-string p1, "Ping--OK"

    .line 4
    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;->f:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->i(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;->onComplete()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ping--onCompleted. Composite success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsResolver"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;->f:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->g(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V

    :cond_0
    return-void
.end method
