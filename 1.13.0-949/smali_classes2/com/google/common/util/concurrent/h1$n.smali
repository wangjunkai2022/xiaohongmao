.class final Lcom/google/common/util/concurrent/h1$n;
.super Lcom/google/common/util/concurrent/h0;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Lcom/google/common/util/concurrent/h1$o;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Lock;Lcom/google/common/util/concurrent/h1$o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/h1$n;->a:Ljava/util/concurrent/locks/Lock;

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/h1$n;->b:Lcom/google/common/util/concurrent/h1$o;

    return-void
.end method


# virtual methods
.method a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h1$n;->a:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/h1$m;

    iget-object v1, p0, Lcom/google/common/util/concurrent/h1$n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/h1$n;->b:Lcom/google/common/util/concurrent/h1$o;

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/h1$m;-><init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/h1$o;)V

    return-object v0
.end method
