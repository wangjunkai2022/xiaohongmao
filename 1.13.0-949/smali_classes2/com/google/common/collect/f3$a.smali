.class final Lcom/google/common/collect/f3$a;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f3;->n(Lcom/google/common/collect/f3$t;Ljava/lang/Object;)Lcom/google/common/base/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/f3$t;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f3$t;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f3$a;->a:Lcom/google/common/collect/f3$t;

    iput-object p2, p0, Lcom/google/common/collect/f3$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)TV2;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$a;->a:Lcom/google/common/collect/f3$t;

    iget-object v1, p0, Lcom/google/common/collect/f3$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/f3$t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
