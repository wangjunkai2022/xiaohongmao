.class public Lcom/coremedia/iso/boxes/f0;
.super Lcom/googlecode/mp4parser/b;
.source "MediaInformationBox.java"


# static fields
.field public static final n:Ljava/lang/String; = "minf"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "minf"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public J()Lcom/coremedia/iso/boxes/a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/d;

    .line 2
    instance-of v2, v1, Lcom/coremedia/iso/boxes/a;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/coremedia/iso/boxes/a;

    return-object v1
.end method

.method public K()Lcom/coremedia/iso/boxes/u0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/d;

    .line 2
    instance-of v2, v1, Lcom/coremedia/iso/boxes/u0;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/coremedia/iso/boxes/u0;

    return-object v1
.end method
