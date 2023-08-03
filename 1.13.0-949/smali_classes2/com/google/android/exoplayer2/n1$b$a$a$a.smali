.class final Lcom/google/android/exoplayer2/n1$b$a$a$a;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n1$b$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/n1$b$a$a;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/n1$b$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a$a$a;->a:Lcom/google/android/exoplayer2/n1$b$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/n1$b$a$a;Lcom/google/android/exoplayer2/n1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n1$b$a$a$a;-><init>(Lcom/google/android/exoplayer2/n1$b$a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/w;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a$a$a;->a:Lcom/google/android/exoplayer2/n1$b$a$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/n1$b$a$a;->d:Lcom/google/android/exoplayer2/n1$b$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/n1$b;->b(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/q;->d(I)Lcom/google/android/exoplayer2/util/q$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/q$a;->b()V

    return-void
.end method

.method public bridge synthetic f(Lcom/google/android/exoplayer2/source/y0;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/w;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/n1$b$a$a$a;->a(Lcom/google/android/exoplayer2/source/w;)V

    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/source/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b$a$a$a;->a:Lcom/google/android/exoplayer2/n1$b$a$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/n1$b$a$a;->d:Lcom/google/android/exoplayer2/n1$b$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/n1$b;->c(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/common/util/concurrent/e1;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/w;->u()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/e1;->M(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a$a$a;->a:Lcom/google/android/exoplayer2/n1$b$a$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/n1$b$a$a;->d:Lcom/google/android/exoplayer2/n1$b$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/n1$b;->b(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/q;->d(I)Lcom/google/android/exoplayer2/util/q$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/q$a;->b()V

    return-void
.end method
