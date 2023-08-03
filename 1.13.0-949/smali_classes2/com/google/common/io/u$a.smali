.class Lcom/google/common/io/u$a;
.super Lcom/google/common/io/s;
.source "LineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/io/u;


# direct methods
.method constructor <init>(Lcom/google/common/io/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/u$a;->c:Lcom/google/common/io/u;

    invoke-direct {p0}, Lcom/google/common/io/s;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/google/common/io/u$a;->c:Lcom/google/common/io/u;

    invoke-static {p2}, Lcom/google/common/io/u;->a(Lcom/google/common/io/u;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
