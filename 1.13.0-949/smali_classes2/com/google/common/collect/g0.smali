.class public abstract Lcom/google/common/collect/g0;
.super Ljava/lang/Object;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g0$b;
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/g0;

.field private static final b:Lcom/google/common/collect/g0;

.field private static final c:Lcom/google/common/collect/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/g0$a;

    invoke-direct {v0}, Lcom/google/common/collect/g0$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/g0;->a:Lcom/google/common/collect/g0;

    .line 2
    new-instance v0, Lcom/google/common/collect/g0$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/g0$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/g0;->b:Lcom/google/common/collect/g0;

    .line 3
    new-instance v0, Lcom/google/common/collect/g0$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/g0$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/g0;->c:Lcom/google/common/collect/g0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/g0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/g0;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/collect/g0;
    .locals 1

    sget-object v0, Lcom/google/common/collect/g0;->b:Lcom/google/common/collect/g0;

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/collect/g0;
    .locals 1

    sget-object v0, Lcom/google/common/collect/g0;->c:Lcom/google/common/collect/g0;

    return-object v0
.end method

.method static synthetic c()Lcom/google/common/collect/g0;
    .locals 1

    sget-object v0, Lcom/google/common/collect/g0;->a:Lcom/google/common/collect/g0;

    return-object v0
.end method

.method public static n()Lcom/google/common/collect/g0;
    .locals 1

    sget-object v0, Lcom/google/common/collect/g0;->a:Lcom/google/common/collect/g0;

    return-object v0
.end method


# virtual methods
.method public abstract d(DD)Lcom/google/common/collect/g0;
.end method

.method public abstract e(FF)Lcom/google/common/collect/g0;
.end method

.method public abstract f(II)Lcom/google/common/collect/g0;
.end method

.method public abstract g(JJ)Lcom/google/common/collect/g0;
.end method

.method public final h(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/common/collect/g0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/g0;->k(ZZ)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public abstract i(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lcom/google/common/collect/g0;"
        }
    .end annotation
.end method

.method public abstract j(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/g0;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/g0;"
        }
    .end annotation
.end method

.method public abstract k(ZZ)Lcom/google/common/collect/g0;
.end method

.method public abstract l(ZZ)Lcom/google/common/collect/g0;
.end method

.method public abstract m()I
.end method
