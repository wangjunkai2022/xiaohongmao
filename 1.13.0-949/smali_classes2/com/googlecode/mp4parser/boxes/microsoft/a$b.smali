.class Lcom/googlecode/mp4parser/boxes/microsoft/a$b;
.super Ljava/lang/Object;
.source "XtraBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/microsoft/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/googlecode/mp4parser/boxes/microsoft/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/boxes/microsoft/a$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/googlecode/mp4parser/boxes/microsoft/a$b;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/googlecode/mp4parser/boxes/microsoft/a$b;)I
    .locals 0

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->g()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/googlecode/mp4parser/boxes/microsoft/a$b;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic c(Lcom/googlecode/mp4parser/boxes/microsoft/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/googlecode/mp4parser/boxes/microsoft/a$b;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->h(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic e(Lcom/googlecode/mp4parser/boxes/microsoft/a$b;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->f(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private f(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/googlecode/mp4parser/boxes/microsoft/a;->t(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/microsoft/a$c;

    invoke-static {v1, p1}, Lcom/googlecode/mp4parser/boxes/microsoft/a$c;->b(Lcom/googlecode/mp4parser/boxes/microsoft/a$c;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/microsoft/a$c;

    invoke-static {v2}, Lcom/googlecode/mp4parser/boxes/microsoft/a$c;->c(Lcom/googlecode/mp4parser/boxes/microsoft/a$c;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private h(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->a:I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 3
    invoke-static {p1, v0}, Lcom/googlecode/mp4parser/boxes/microsoft/a;->s(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    .line 5
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->a:I

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->g()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Improperly handled Xtra tag: Sizes don\'t match ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance v2, Lcom/googlecode/mp4parser/boxes/microsoft/a$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/googlecode/mp4parser/boxes/microsoft/a$c;-><init>(Lcom/googlecode/mp4parser/boxes/microsoft/a$c;)V

    .line 8
    invoke-static {v2, p1}, Lcom/googlecode/mp4parser/boxes/microsoft/a$c;->a(Lcom/googlecode/mp4parser/boxes/microsoft/a$c;Ljava/nio/ByteBuffer;)V

    .line 9
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]:\n"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "  "

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/microsoft/a$b;->c:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/microsoft/a$c;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/microsoft/a$c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
