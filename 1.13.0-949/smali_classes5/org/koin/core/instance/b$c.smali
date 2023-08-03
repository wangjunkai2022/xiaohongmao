.class final Lorg/koin/core/instance/b$c;
.super Lkotlin/jvm/internal/Lambda;
.source "InstanceBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/instance/b;->e(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Ly8/a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "T",
        "invoke",
        "()[Ljava/lang/Object;"
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
.field final synthetic a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lorg/koin/core/scope/Scope;

.field final synthetic c:Ly8/a;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Ly8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lorg/koin/core/scope/Scope;",
            "Ly8/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/instance/b$c;->a:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lorg/koin/core/instance/b$c;->b:Lorg/koin/core/scope/Scope;

    iput-object p3, p0, Lorg/koin/core/instance/b$c;->c:Ly8/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/instance/b$c;->invoke()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/Object;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/koin/core/instance/b$c;->a:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lorg/koin/core/instance/b$c;->b:Lorg/koin/core/scope/Scope;

    iget-object v2, p0, Lorg/koin/core/instance/b$c;->c:Ly8/a;

    invoke-static {v0, v1, v2}, Lorg/koin/core/instance/b;->b(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Ly8/a;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
