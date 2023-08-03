.class final Lcom/google/common/util/concurrent/h1$m;
.super Lcom/google/common/util/concurrent/b0;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Condition;

.field private final b:Lcom/google/common/util/concurrent/h1$o;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/h1$o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/b0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/h1$m;->a:Ljava/util/concurrent/locks/Condition;

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/h1$m;->b:Lcom/google/common/util/concurrent/h1$o;

    return-void
.end method


# virtual methods
.method a()Ljava/util/concurrent/locks/Condition;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h1$m;->a:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method
