.class Lcom/google/common/cache/CacheLoader$a$a;
.super Ljava/lang/Object;
.source "CacheLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/CacheLoader$a;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/cache/CacheLoader$a;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheLoader$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/CacheLoader$a$a;->c:Lcom/google/common/cache/CacheLoader$a;

    iput-object p2, p0, Lcom/google/common/cache/CacheLoader$a$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/cache/CacheLoader$a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/CacheLoader$a$a;->c:Lcom/google/common/cache/CacheLoader$a;

    iget-object v0, v0, Lcom/google/common/cache/CacheLoader$a;->a:Lcom/google/common/cache/CacheLoader;

    iget-object v1, p0, Lcom/google/common/cache/CacheLoader$a$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/cache/CacheLoader$a$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/CacheLoader;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
