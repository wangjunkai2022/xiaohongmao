.class public Lcom/koushikdutta/async/http/body/MultipartFormDataBody;
.super Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/server/BoundaryEmitter;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/String; = "multipart/"

.field public static final t:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field j:Lcom/koushikdutta/async/LineEmitter;

.field k:Lcom/koushikdutta/async/http/Headers;

.field l:Lcom/koushikdutta/async/ByteBufferList;

.field m:Lcom/koushikdutta/async/http/body/Part;

.field n:Ljava/lang/String;

.field o:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

.field p:I

.field q:I

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    const-string v0, "multipart/form-data"

    .line 8
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    const-string v0, "multipart/form-data"

    .line 2
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/koushikdutta/async/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p1

    const-string v0, "boundary"

    .line 4
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No boundary found for multipart/form-data"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->B0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected A0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    .line 2
    new-instance v1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:Lcom/koushikdutta/async/LineEmitter;

    .line 3
    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/Headers;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/LineEmitter;->b(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:Lcom/koushikdutta/async/LineEmitter;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/DataEmitterBase;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method public C0(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/http/body/FilePart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->D0(Lcom/koushikdutta/async/http/body/Part;)V

    return-void
.end method

.method public D0(Lcom/koushikdutta/async/http/body/Part;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->r:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public E0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/http/body/StringPart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->D0(Lcom/koushikdutta/async/http/body/Part;)V

    return-void
.end method

.method public F0()Lcom/koushikdutta/async/http/Multimap;
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->k:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Headers;->i()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/Multimap;-><init>(Lcom/koushikdutta/async/http/Multimap;)V

    return-object v0
.end method

.method public G0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->k:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public H0()Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->o:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    return-object v0
.end method

.method public I0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->r:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method J0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->l:Lcom/koushikdutta/async/ByteBufferList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->k:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->k:Lcom/koushikdutta/async/http/Headers;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->l:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->H()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->m:Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/Part;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "unnamed"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->m:Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/Part;->c()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_0
    new-instance v2, Lcom/koushikdutta/async/http/body/StringPart;

    invoke-direct {v2, v1, v0}, Lcom/koushikdutta/async/http/body/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->m:Lcom/koushikdutta/async/http/body/Part;

    iget-object v3, v3, Lcom/koushikdutta/async/http/body/Part;->a:Lcom/koushikdutta/async/http/Headers;

    iput-object v3, v2, Lcom/koushikdutta/async/http/body/Part;->a:Lcom/koushikdutta/async/http/Headers;

    .line 8
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->D0(Lcom/koushikdutta/async/http/body/Part;)V

    .line 9
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->k:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->m:Lcom/koushikdutta/async/http/body/Part;

    .line 11
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->l:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method public K(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->G(Lcom/koushikdutta/async/DataEmitter;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/DataEmitterBase;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public K0(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->o:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->F0()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->w0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->B0(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->w0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->B0(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/body/Part;

    .line 4
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v3

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->y0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/Headers;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->f()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    int-to-long v4, v0

    .line 6
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->f()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v2, v0

    add-long/2addr v6, v2

    const/4 v0, 0x2

    int-to-long v2, v0

    add-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->x0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->q:I

    return v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/lang/String;

    return-void
.end method

.method public q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->r:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/koushikdutta/async/future/Continuation;

    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;

    invoke-direct {v0, p0, p3}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 3
    iget-object p3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->r:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/body/Part;

    .line 4
    new-instance v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/future/Continuation;->q(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/Continuation;->q(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/Continuation;->q(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p3, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;

    invoke-direct {p3, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/future/Continuation;->q(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    .line 8
    invoke-virtual {p1}, Lcom/koushikdutta/async/future/Continuation;->H()Lcom/koushikdutta/async/future/Continuation;

    return-void
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->I0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/body/Part;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "multipart content is empty"

    return-object v0
.end method

.method protected z0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->z0()V

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->J0()V

    return-void
.end method
