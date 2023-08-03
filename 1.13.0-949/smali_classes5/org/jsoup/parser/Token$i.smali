.class abstract Lorg/jsoup/parser/Token$i;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "i"
.end annotation


# static fields
.field private static final m:I = 0x200


# instance fields
.field protected b:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final d:Ljava/lang/StringBuilder;

.field private e:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Z

.field private final g:Ljava/lang/StringBuilder;

.field private h:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field k:Z

.field l:Lorg/jsoup/nodes/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$a;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    .line 5
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->i:Z

    .line 6
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->j:Z

    .line 7
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->k:Z

    return-void
.end method

.method private x()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->i:Z

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method final A(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->s(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final B()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final C()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Token$i;->k:Z

    return v0
.end method

.method final D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/jsoup/helper/d;->b(Z)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    return-object v0
.end method

.method final E(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lorg/jsoup/parser/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    return-object p0
.end method

.method final F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->size()I

    move-result v0

    const/16 v2, 0x200

    if-ge v0, v2, :cond_5

    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 7
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$i;->i:Z

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_3
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$i;->j:Z

    if-eqz v2, :cond_4

    const-string v2, ""

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 10
    :goto_1
    iget-object v3, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v3, v0, v2}, Lorg/jsoup/nodes/b;->e(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 11
    :cond_5
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    .line 12
    iput-object v1, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    .line 14
    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    .line 15
    iput-object v1, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    .line 16
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->i:Z

    .line 17
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->j:Z

    return-void
.end method

.method final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    return-object v0
.end method

.method H()Lorg/jsoup/parser/Token$i;
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    .line 4
    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$i;->f:Z

    .line 6
    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    .line 7
    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    .line 8
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$i;->j:Z

    .line 9
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$i;->i:Z

    .line 10
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$i;->k:Z

    .line 11
    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method final I()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->j:Z

    return-void
.end method

.method final J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[unset]"

    :goto_0
    return-object v0
.end method

.method bridge synthetic m()Lorg/jsoup/parser/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->H()Lorg/jsoup/parser/Token$i;

    move-result-object v0

    return-object v0
.end method

.method final p(C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$i;->x()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final q(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lorg/jsoup/parser/Token$i;->x()V

    .line 3
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method final r(C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$i;->y()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final s(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$i;->y()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method final t([C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$i;->y()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method final u([I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$i;->y()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 3
    iget-object v3, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final v(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$i;->w(Ljava/lang/String;)V

    return-void
.end method

.method final w(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lorg/jsoup/parser/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    return-void
.end method

.method final z()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->F()V

    :cond_0
    return-void
.end method
