.class final Lorg/koin/core/scope/Scope$b;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "T",
        "invoke",
        "()Ljava/lang/Object;"
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

.field final synthetic b:Lz8/a;

.field final synthetic c:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ly8/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/koin/core/scope/Scope;Lz8/a;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lz8/a;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/scope/Scope$b;->a:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/core/scope/Scope$b;->b:Lz8/a;

    iput-object p3, p0, Lorg/koin/core/scope/Scope$b;->c:Lkotlin/reflect/KClass;

    iput-object p4, p0, Lorg/koin/core/scope/Scope$b;->d:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/koin/core/scope/Scope$b;->a:Lorg/koin/core/scope/Scope;

    iget-object v1, p0, Lorg/koin/core/scope/Scope$b;->b:Lz8/a;

    iget-object v2, p0, Lorg/koin/core/scope/Scope$b;->c:Lkotlin/reflect/KClass;

    iget-object v3, p0, Lorg/koin/core/scope/Scope$b;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v3}, Lorg/koin/core/scope/Scope;->b(Lorg/koin/core/scope/Scope;Lz8/a;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
