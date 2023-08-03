.class final Lcom/google/common/collect/f3$m;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/f3$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f3;->i(Lcom/google/common/base/q;)Lcom/google/common/collect/f3$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/f3$t<",
        "TK;TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/q;


# direct methods
.method constructor <init>(Lcom/google/common/base/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f3$m;->a:Lcom/google/common/base/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV1;)TV2;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/common/collect/f3$m;->a:Lcom/google/common/base/q;

    invoke-interface {p1, p2}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
