.class public final Lorg/koin/core/scope/Scope$injectOrNull$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/scope/Scope;->S(Lz8/a;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$injectOrNull$1\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,438:1\n156#2:439\n*S KotlinDebug\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$injectOrNull$1\n*L\n119#1:439\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic a:Lorg/koin/core/scope/Scope;

.field final synthetic b:Lz8/a;

.field final synthetic c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ly8/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/Scope;Lz8/a;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lz8/a;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/scope/Scope$injectOrNull$1;->a:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/core/scope/Scope$injectOrNull$1;->b:Lz8/a;

    iput-object p3, p0, Lorg/koin/core/scope/Scope$injectOrNull$1;->c:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/koin/core/scope/Scope$injectOrNull$1;->a:Lorg/koin/core/scope/Scope;

    iget-object v1, p0, Lorg/koin/core/scope/Scope$injectOrNull$1;->b:Lz8/a;

    iget-object v2, p0, Lorg/koin/core/scope/Scope$injectOrNull$1;->c:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x4

    const-string v4, "T"

    .line 2
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/koin/core/scope/Scope;->A(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
