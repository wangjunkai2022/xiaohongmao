.class final Lorg/koin/core/scope/Scope$a;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/scope/Scope;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lorg/koin/core/scope/Scope;


# direct methods
.method constructor <init>(Lorg/koin/core/scope/Scope;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/core/scope/Scope$a;->a:Lorg/koin/core/scope/Scope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/koin/core/scope/Scope$a;->a:Lorg/koin/core/scope/Scope;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/koin/core/scope/Scope;->c(Lorg/koin/core/scope/Scope;Z)V

    .line 3
    iget-object v0, p0, Lorg/koin/core/scope/Scope$a;->a:Lorg/koin/core/scope/Scope;

    invoke-static {v0}, Lorg/koin/core/scope/Scope;->a(Lorg/koin/core/scope/Scope;)V

    .line 4
    iget-object v0, p0, Lorg/koin/core/scope/Scope$a;->a:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->K()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/core/scope/Scope$a;->a:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0, v1}, Lorg/koin/core/registry/c;->g(Lorg/koin/core/scope/Scope;)V

    return-void
.end method
