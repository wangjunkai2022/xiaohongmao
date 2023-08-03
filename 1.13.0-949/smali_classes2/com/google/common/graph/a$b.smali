.class abstract Lcom/google/common/graph/a$b;
.super Ljava/util/AbstractSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/a$b$b;,
        Lcom/google/common/graph/a$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/graph/r<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field protected final b:Lcom/google/common/graph/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/h<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/h;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/h<",
            "TN;>;TN;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/graph/a$b;->b:Lcom/google/common/graph/h;

    .line 4
    iput-object p2, p0, Lcom/google/common/graph/a$b;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/h;Ljava/lang/Object;Lcom/google/common/graph/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/a$b;-><init>(Lcom/google/common/graph/h;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/google/common/graph/h;Ljava/lang/Object;)Lcom/google/common/graph/a$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/h<",
            "TN;>;TN;)",
            "Lcom/google/common/graph/a$b<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/h;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/graph/a$b$a;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/a$b$a;-><init>(Lcom/google/common/graph/h;Ljava/lang/Object;Lcom/google/common/graph/a$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/a$b$b;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/a$b$b;-><init>(Lcom/google/common/graph/h;Ljava/lang/Object;Lcom/google/common/graph/a$a;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
