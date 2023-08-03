.class final Lorg/koin/core/component/c$a;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinScopeComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/component/c;->c(Lorg/koin/core/component/b;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/core/scope/Scope;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lorg/koin/core/component/b;",
        "T",
        "Lorg/koin/core/scope/Scope;",
        "a",
        "()Lorg/koin/core/scope/Scope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/koin/core/component/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/koin/core/component/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/component/c$a;->a:Lorg/koin/core/component/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/koin/core/scope/Scope;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/core/component/c$a;->a:Lorg/koin/core/component/b;

    invoke-static {v0}, Lorg/koin/core/component/c;->f(Lorg/koin/core/component/b;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/koin/core/component/c$a;->a:Lorg/koin/core/component/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/koin/core/component/c;->b(Lorg/koin/core/component/b;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/koin/core/component/c$a;->a()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method
