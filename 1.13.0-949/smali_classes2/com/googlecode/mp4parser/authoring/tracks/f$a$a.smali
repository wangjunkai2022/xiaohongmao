.class Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;
.super Ljava/lang/Object;
.source "Avc1ToAvc3TrackImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/tracks/f$a;->b(I)Lcom/googlecode/mp4parser/authoring/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

.field private final synthetic b:Ljava/nio/ByteBuffer;

.field private final synthetic c:I

.field private final synthetic d:Lcom/googlecode/mp4parser/authoring/f;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/f$a;Ljava/nio/ByteBuffer;ILcom/googlecode/mp4parser/authoring/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->b:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    iput-object p4, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->d:Lcom/googlecode/mp4parser/authoring/f;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->d:Lcom/googlecode/mp4parser/authoring/f;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/f;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 5
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->d:Lcom/googlecode/mp4parser/authoring/f;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/f;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 11
    array-length v3, v0

    int-to-long v3, v3

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    invoke-static {v3, v4, v2, v5}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 12
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 14
    array-length v3, v1

    int-to-long v3, v3

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    invoke-static {v3, v4, v2, v5}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 15
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 16
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 17
    array-length v1, v0

    int-to-long v4, v1

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    invoke-static {v4, v5, v2, v1}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 18
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 19
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 20
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    array-length v2, v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto/16 :goto_2

    .line 21
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 22
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    array-length v0, v0

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    goto/16 :goto_1

    .line 23
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 24
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    array-length v2, v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto/16 :goto_0
.end method

.method public b(Ljava/nio/channels/WritableByteChannel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->d:Lcom/googlecode/mp4parser/authoring/f;

    invoke-interface {v0, p1}, Lcom/googlecode/mp4parser/authoring/f;->b(Ljava/nio/channels/WritableByteChannel;)V

    return-void

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 6
    array-length v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    invoke-static {v2, v3, v4, v5}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 7
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 9
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 10
    array-length v2, v0

    int-to-long v2, v2

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    invoke-static {v2, v3, v4, v5}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 11
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 14
    array-length v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    invoke-static {v2, v3, v4, v5}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 15
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 16
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/16 :goto_0
.end method

.method public getSize()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/f$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/f$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/f$a;)Lcom/googlecode/mp4parser/authoring/tracks/f;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/f;->c:Lcom/mp4parser/iso14496/part15/a;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/a;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->d:Lcom/googlecode/mp4parser/authoring/f;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/f;->getSize()J

    move-result-wide v2

    int-to-long v0, v1

    add-long/2addr v2, v0

    return-wide v2

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 6
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    array-length v2, v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_2

    .line 7
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 8
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    array-length v0, v0

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 10
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/f$a$a;->c:I

    array-length v2, v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_0
.end method
