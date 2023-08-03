.class Lcom/googlecode/mp4parser/authoring/tracks/r$b;
.super Ljava/util/AbstractList;
.source "ReplaceSampleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/googlecode/mp4parser/authoring/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/mp4parser/authoring/tracks/r;


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/r$b;->a:Lcom/googlecode/mp4parser/authoring/tracks/r;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/r;Lcom/googlecode/mp4parser/authoring/tracks/r$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/r$b;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/r;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/googlecode/mp4parser/authoring/f;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r$b;->a:Lcom/googlecode/mp4parser/authoring/tracks/r;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/r;->a(Lcom/googlecode/mp4parser/authoring/tracks/r;)J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/r$b;->a:Lcom/googlecode/mp4parser/authoring/tracks/r;

    invoke-static {p1}, Lcom/googlecode/mp4parser/authoring/tracks/r;->b(Lcom/googlecode/mp4parser/authoring/tracks/r;)Lcom/googlecode/mp4parser/authoring/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r$b;->a:Lcom/googlecode/mp4parser/authoring/tracks/r;

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/googlecode/mp4parser/authoring/f;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/r$b;->a(I)Lcom/googlecode/mp4parser/authoring/f;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r$b;->a:Lcom/googlecode/mp4parser/authoring/tracks/r;

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
