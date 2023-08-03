.class public final Lcom/qennnsad/aknkaksd/util/translation/d$a;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;
.source "TranslatorBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/translation/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/qennnsad/aknkaksd/util/translation/d$a",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        "",
        "response",
        "",
        "f",
        "",
        "throwable",
        "onError",
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
.field final synthetic e:Lcom/qennnsad/aknkaksd/util/translation/d;

.field final synthetic f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/translation/d;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/util/translation/d;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->e:Lcom/qennnsad/aknkaksd/util/translation/d;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->f:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->g:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V

    return-void
.end method


# virtual methods
.method public f(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 6
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
        .annotation build Lm8/h;
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

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->e:Lcom/qennnsad/aknkaksd/util/translation/d;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->f:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/translation/d;->a(Lcom/qennnsad/aknkaksd/util/translation/d;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Translation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 4
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/translation/d;->a(Lcom/qennnsad/aknkaksd/util/translation/d;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Empty translation received. Fallback..."

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/o0;->n(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->e:Lcom/qennnsad/aknkaksd/util/translation/d;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->f:Lkotlin/jvm/functions/Function0;

    .line 8
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/translation/d;->a(Lcom/qennnsad/aknkaksd/util/translation/d;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Null translation received. Fallback..."

    invoke-static {p1, v1}, Lcom/qennnsad/aknkaksd/util/o0;->n(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->e:Lcom/qennnsad/aknkaksd/util/translation/d;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/translation/d;->a(Lcom/qennnsad/aknkaksd/util/translation/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error requesting translation"

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/error/b;->a:Lcom/qennnsad/aknkaksd/analytics/error/b$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/analytics/error/b$a;->a()Lcom/qennnsad/aknkaksd/analytics/error/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/analytics/error/b;->b(Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/d$a;->f:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
