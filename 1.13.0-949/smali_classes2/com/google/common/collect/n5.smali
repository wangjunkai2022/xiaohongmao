.class final Lcom/google/common/collect/n5;
.super Lcom/google/common/collect/s3;
.source "UsingToStringOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/s3<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/b;
    serializable = true
.end annotation


# static fields
.field static final c:Lcom/google/common/collect/n5;

.field private static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/n5;

    invoke-direct {v0}, Lcom/google/common/collect/n5;-><init>()V

    sput-object v0, Lcom/google/common/collect/n5;->c:Lcom/google/common/collect/n5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/s3;-><init>()V

    return-void
.end method

.method private J()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/n5;->c:Lcom/google/common/collect/n5;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.usingToString()"

    return-object v0
.end method
