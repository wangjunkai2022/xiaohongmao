.class public final Lorg/koin/core/instance/c;
.super Ljava/lang/Object;
.source "InstanceContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0003\u0010\u0005R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0008\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/koin/core/instance/c;",
        "",
        "Lorg/koin/core/Koin;",
        "a",
        "Lorg/koin/core/Koin;",
        "()Lorg/koin/core/Koin;",
        "koin",
        "Lorg/koin/core/scope/Scope;",
        "b",
        "Lorg/koin/core/scope/Scope;",
        "c",
        "()Lorg/koin/core/scope/Scope;",
        "scope",
        "Ly8/a;",
        "parameters",
        "Ly8/a;",
        "()Ly8/a;",
        "<init>",
        "(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;Ly8/a;)V",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lorg/koin/core/Koin;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lorg/koin/core/scope/Scope;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ly8/a;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;Ly8/a;)V
    .locals 1
    .param p1    # Lorg/koin/core/Koin;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ly8/a;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/koin/core/instance/c;->a:Lorg/koin/core/Koin;

    .line 3
    iput-object p2, p0, Lorg/koin/core/instance/c;->b:Lorg/koin/core/scope/Scope;

    .line 4
    iput-object p3, p0, Lorg/koin/core/instance/c;->c:Ly8/a;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;Ly8/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/koin/core/instance/c;-><init>(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;Ly8/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/koin/core/Koin;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/core/instance/c;->a:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public final b()Ly8/a;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lorg/koin/core/instance/c;->c:Ly8/a;

    return-object v0
.end method

.method public final c()Lorg/koin/core/scope/Scope;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/core/instance/c;->b:Lorg/koin/core/scope/Scope;

    return-object v0
.end method
