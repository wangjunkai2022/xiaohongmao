.class final Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;
.super Ljava/lang/Thread;
.source "OverseasDetector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/repository/dns/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\u0008\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R0\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0006\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;",
        "Ljava/lang/Thread;",
        "",
        "run",
        "Lkotlin/Function1;",
        "",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "()Lkotlin/jvm/functions/Function1;",
        "b",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onComplete",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lkotlin/jvm/functions/Function1;)V",
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
.field private a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/data/repository/dns/h;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/dns/h;
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
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;-><init>(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final b(Lkotlin/jvm/functions/Function1;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->b(Lcom/qennnsad/aknkaksd/data/repository/dns/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refreshing Google API availability status..."

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->a(Lcom/qennnsad/aknkaksd/data/repository/dns/h;)Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->i()Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    move-result-object v0

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->IN_CHINA:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->b(Lcom/qennnsad/aknkaksd/data/repository/dns/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Forced China Config: Google API unavailable"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->c(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Ljava/lang/Boolean;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->a:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->f()Z

    move-result v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->c(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Ljava/lang/Boolean;)V

    .line 8
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->b(Lcom/qennnsad/aknkaksd/data/repository/dns/h;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google API available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->a:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->d(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;)V

    return-void
.end method
