.class Lcom/googlecode/mp4parser/authoring/tracks/a$a;
.super Ljava/lang/Object;
.source "AACTrackImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/tracks/a;->d(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/tracks/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/mp4parser/authoring/tracks/a;

.field private final synthetic b:J

.field private final synthetic c:J


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/a;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/a;

    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->b:J

    iput-wide p4, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->c:J

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/a;->a(Lcom/googlecode/mp4parser/authoring/tracks/a;)Lcom/googlecode/mp4parser/e;

    move-result-object v0

    iget-wide v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->b:J

    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/googlecode/mp4parser/e;->e0(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/nio/channels/WritableByteChannel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->a:Lcom/googlecode/mp4parser/authoring/tracks/a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/a;->a(Lcom/googlecode/mp4parser/authoring/tracks/a;)Lcom/googlecode/mp4parser/e;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->b:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->c:J

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/googlecode/mp4parser/e;->m(JJLjava/nio/channels/WritableByteChannel;)J

    return-void
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a$a;->c:J

    return-wide v0
.end method
