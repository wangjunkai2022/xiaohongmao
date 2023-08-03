.class public Lorg/jsoup/parser/e;
.super Ljava/lang/Object;
.source "ParseSettings.java"


# static fields
.field public static final c:Lorg/jsoup/parser/e;

.field public static final d:Lorg/jsoup/parser/e;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/e;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/e;->c:Lorg/jsoup/parser/e;

    .line 2
    new-instance v0, Lorg/jsoup/parser/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/e;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/e;

    return-void
.end method

.method constructor <init>(Lorg/jsoup/parser/e;)V
    .locals 1

    .line 4
    iget-boolean v0, p1, Lorg/jsoup/parser/e;->a:Z

    iget-boolean p1, p1, Lorg/jsoup/parser/e;->b:Z

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/e;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/jsoup/parser/e;->a:Z

    .line 3
    iput-boolean p2, p0, Lorg/jsoup/parser/e;->b:Z

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lorg/jsoup/parser/e;->b:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lorg/jsoup/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method c(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/e;->b:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->D()V

    :cond_0
    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lorg/jsoup/parser/e;->a:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lorg/jsoup/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/e;->b:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/e;->a:Z

    return v0
.end method
