.class public Lcom/facebook/imagepipeline/core/a;
.super Ljava/lang/Object;
.source "CloseableReferenceFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/references/a$d;


# direct methods
.method public constructor <init>(Lm1/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "closeableReferenceLeakTracker"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/core/a$a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/a$a;-><init>(Lcom/facebook/imagepipeline/core/a;Lm1/a;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/a;->a:Lcom/facebook/common/references/a$d;

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/a;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tr"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/io/Closeable;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "u"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/io/Closeable;",
            ">(TU;)",
            "Lcom/facebook/common/references/a<",
            "TU;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/a;->a:Lcom/facebook/common/references/a$d;

    invoke-static {p1, v0}, Lcom/facebook/common/references/a;->E(Ljava/io/Closeable;Lcom/facebook/common/references/a$d;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "resourceReleaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/common/references/h<",
            "TT;>;)",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/a;->a:Lcom/facebook/common/references/a$d;

    invoke-static {p1, p2, v0}, Lcom/facebook/common/references/a;->H(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method
