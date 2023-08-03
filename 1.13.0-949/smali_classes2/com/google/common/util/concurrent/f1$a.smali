.class Lcom/google/common/util/concurrent/f1$a;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/f1;->b(Ljava/lang/Object;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/TimeUnit;

.field final synthetic d:Ljava/util/Set;

.field final synthetic e:Lcom/google/common/util/concurrent/f1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/f1;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/f1$a;->e:Lcom/google/common/util/concurrent/f1;

    iput-object p2, p0, Lcom/google/common/util/concurrent/f1$a;->a:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/common/util/concurrent/f1$a;->b:J

    iput-object p5, p0, Lcom/google/common/util/concurrent/f1$a;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lcom/google/common/util/concurrent/f1$a;->d:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/google/common/util/concurrent/f1$a$a;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/common/util/concurrent/f1$a$a;-><init>(Lcom/google/common/util/concurrent/f1$a;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/f1$a;->e:Lcom/google/common/util/concurrent/f1;

    iget-wide v2, p0, Lcom/google/common/util/concurrent/f1$a;->b:J

    iget-object v4, p0, Lcom/google/common/util/concurrent/f1$a;->c:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lcom/google/common/util/concurrent/f1$a;->d:Ljava/util/Set;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/f1;->g(Lcom/google/common/util/concurrent/f1;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
