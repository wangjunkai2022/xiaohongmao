.class Lcom/google/common/collect/c1$d;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "Ljava/lang/Iterable<",
        "TE;>;",
        "Lcom/google/common/collect/c1<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/c1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/c1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/c1;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/c1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c1$d;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/c1;

    move-result-object p1

    return-object p1
.end method
