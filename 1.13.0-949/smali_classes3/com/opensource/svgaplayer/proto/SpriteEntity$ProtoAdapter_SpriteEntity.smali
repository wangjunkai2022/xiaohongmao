.class final Lcom/opensource/svgaplayer/proto/SpriteEntity$ProtoAdapter_SpriteEntity;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SpriteEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/SpriteEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_SpriteEntity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/opensource/svgaplayer/proto/SpriteEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/opensource/svgaplayer/proto/SpriteEntity;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/SpriteEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v3, v4, v5}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->matteKey(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v0, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->frames:Ljava/util/List;

    sget-object v4, Lcom/opensource/svgaplayer/proto/FrameEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->imageKey(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 12
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->build()Lcom/opensource/svgaplayer/proto/SpriteEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/SpriteEntity$ProtoAdapter_SpriteEntity;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/SpriteEntity;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/SpriteEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p2, Lcom/opensource/svgaplayer/proto/SpriteEntity;->imageKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/proto/FrameEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/opensource/svgaplayer/proto/SpriteEntity;->frames:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p2, Lcom/opensource/svgaplayer/proto/SpriteEntity;->matteKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/opensource/svgaplayer/proto/SpriteEntity;

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/proto/SpriteEntity$ProtoAdapter_SpriteEntity;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/SpriteEntity;)V

    return-void
.end method

.method public encodedSize(Lcom/opensource/svgaplayer/proto/SpriteEntity;)I
    .locals 5

    .line 2
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;->imageKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/opensource/svgaplayer/proto/FrameEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 3
    invoke-virtual {v2}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;->frames:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;->matteKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/SpriteEntity$ProtoAdapter_SpriteEntity;->encodedSize(Lcom/opensource/svgaplayer/proto/SpriteEntity;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/opensource/svgaplayer/proto/SpriteEntity;)Lcom/opensource/svgaplayer/proto/SpriteEntity;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/SpriteEntity;->newBuilder()Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->frames:Ljava/util/List;

    sget-object v1, Lcom/opensource/svgaplayer/proto/FrameEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/squareup/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)V

    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 5
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->build()Lcom/opensource/svgaplayer/proto/SpriteEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/SpriteEntity$ProtoAdapter_SpriteEntity;->redact(Lcom/opensource/svgaplayer/proto/SpriteEntity;)Lcom/opensource/svgaplayer/proto/SpriteEntity;

    move-result-object p1

    return-object p1
.end method
