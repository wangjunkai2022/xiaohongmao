.class final Lorg/koin/core/instance/f$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SingleInstanceFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/instance/f;->e(Lorg/koin/core/instance/c;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
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
.field final synthetic a:Lorg/koin/core/instance/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/koin/core/instance/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lorg/koin/core/instance/c;


# direct methods
.method constructor <init>(Lorg/koin/core/instance/f;Lorg/koin/core/instance/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/f<",
            "TT;>;",
            "Lorg/koin/core/instance/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/instance/f$a;->a:Lorg/koin/core/instance/f;

    iput-object p2, p0, Lorg/koin/core/instance/f$a;->b:Lorg/koin/core/instance/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/instance/f$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/koin/core/instance/f$a;->a:Lorg/koin/core/instance/f;

    iget-object v1, p0, Lorg/koin/core/instance/f$a;->b:Lorg/koin/core/instance/c;

    invoke-virtual {v0, v1}, Lorg/koin/core/instance/f;->g(Lorg/koin/core/instance/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/koin/core/instance/f$a;->a:Lorg/koin/core/instance/f;

    iget-object v1, p0, Lorg/koin/core/instance/f$a;->b:Lorg/koin/core/instance/c;

    invoke-virtual {v0, v1}, Lorg/koin/core/instance/f;->a(Lorg/koin/core/instance/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/koin/core/instance/f;->i(Lorg/koin/core/instance/f;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
