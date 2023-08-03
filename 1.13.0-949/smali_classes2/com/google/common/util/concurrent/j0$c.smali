.class final Lcom/google/common/util/concurrent/j0$c;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/j0;->o(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/j0$g;

.field final synthetic b:Lcom/google/common/collect/ImmutableList;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/j0$g;Lcom/google/common/collect/ImmutableList;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/j0$c;->a:Lcom/google/common/util/concurrent/j0$g;

    iput-object p2, p0, Lcom/google/common/util/concurrent/j0$c;->b:Lcom/google/common/collect/ImmutableList;

    iput p3, p0, Lcom/google/common/util/concurrent/j0$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/j0$c;->a:Lcom/google/common/util/concurrent/j0$g;

    iget-object v1, p0, Lcom/google/common/util/concurrent/j0$c;->b:Lcom/google/common/collect/ImmutableList;

    iget v2, p0, Lcom/google/common/util/concurrent/j0$c;->c:I

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/j0$g;->a(Lcom/google/common/util/concurrent/j0$g;Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method
