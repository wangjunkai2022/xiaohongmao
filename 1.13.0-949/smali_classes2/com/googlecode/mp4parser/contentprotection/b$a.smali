.class public abstract Lcom/googlecode/mp4parser/contentprotection/b$a;
.super Ljava/lang/Object;
.source "PlayReadyHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/contentprotection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/contentprotection/b$a$a;,
        Lcom/googlecode/mp4parser/contentprotection/b$a$b;,
        Lcom/googlecode/mp4parser/contentprotection/b$a$c;
    }
.end annotation


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/googlecode/mp4parser/contentprotection/b$a;->a:I

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/contentprotection/b$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/coremedia/iso/g;->j(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 3
    invoke-static {p0}, Lcom/coremedia/iso/g;->j(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    .line 4
    new-instance v4, Lcom/googlecode/mp4parser/contentprotection/b$a$a;

    invoke-direct {v4, v2}, Lcom/googlecode/mp4parser/contentprotection/b$a$a;-><init>(I)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v4, Lcom/googlecode/mp4parser/contentprotection/b$a$b;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/contentprotection/b$a$b;-><init>()V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v2, Lcom/googlecode/mp4parser/contentprotection/b$a$a;

    invoke-direct {v2, v4}, Lcom/googlecode/mp4parser/contentprotection/b$a$a;-><init>(I)V

    move-object v4, v2

    goto :goto_1

    .line 7
    :cond_3
    new-instance v4, Lcom/googlecode/mp4parser/contentprotection/b$a$c;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/contentprotection/b$a$c;-><init>()V

    .line 8
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Lcom/googlecode/mp4parser/contentprotection/b$a;->c(Ljava/nio/ByteBuffer;)V

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract b()Ljava/nio/ByteBuffer;
.end method

.method public abstract c(Ljava/nio/ByteBuffer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayReadyRecord"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{type="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/contentprotection/b$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/contentprotection/b$a;->b()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
