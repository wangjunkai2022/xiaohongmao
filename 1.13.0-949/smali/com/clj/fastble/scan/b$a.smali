.class public Lcom/clj/fastble/scan/b$a;
.super Ljava/lang/Object;
.source "BleScanRuleConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:[Ljava/util/UUID;

.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/clj/fastble/scan/b$a;->a:[Ljava/util/UUID;

    .line 3
    iput-object v0, p0, Lcom/clj/fastble/scan/b$a;->b:[Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/clj/fastble/scan/b$a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/clj/fastble/scan/b$a;->d:Z

    .line 6
    iput-boolean v0, p0, Lcom/clj/fastble/scan/b$a;->e:Z

    const-wide/16 v0, 0x2710

    .line 7
    iput-wide v0, p0, Lcom/clj/fastble/scan/b$a;->f:J

    return-void
.end method


# virtual methods
.method a(Lcom/clj/fastble/scan/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/scan/b$a;->a:[Ljava/util/UUID;

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/b;->a(Lcom/clj/fastble/scan/b;[Ljava/util/UUID;)[Ljava/util/UUID;

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/scan/b$a;->b:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/b;->b(Lcom/clj/fastble/scan/b;[Ljava/lang/String;)[Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/scan/b$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/b;->c(Lcom/clj/fastble/scan/b;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-boolean v0, p0, Lcom/clj/fastble/scan/b$a;->d:Z

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/b;->d(Lcom/clj/fastble/scan/b;Z)Z

    .line 5
    iget-boolean v0, p0, Lcom/clj/fastble/scan/b$a;->e:Z

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/b;->e(Lcom/clj/fastble/scan/b;Z)Z

    .line 6
    iget-wide v0, p0, Lcom/clj/fastble/scan/b$a;->f:J

    invoke-static {p1, v0, v1}, Lcom/clj/fastble/scan/b;->f(Lcom/clj/fastble/scan/b;J)J

    return-void
.end method

.method public b()Lcom/clj/fastble/scan/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/clj/fastble/scan/b;

    invoke-direct {v0}, Lcom/clj/fastble/scan/b;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/clj/fastble/scan/b$a;->a(Lcom/clj/fastble/scan/b;)V

    return-object v0
.end method

.method public c(Z)Lcom/clj/fastble/scan/b$a;
    .locals 0

    iput-boolean p1, p0, Lcom/clj/fastble/scan/b$a;->d:Z

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/clj/fastble/scan/b$a;
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public varargs e(Z[Ljava/lang/String;)Lcom/clj/fastble/scan/b$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/clj/fastble/scan/b$a;->e:Z

    .line 2
    iput-object p2, p0, Lcom/clj/fastble/scan/b$a;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public f(J)Lcom/clj/fastble/scan/b$a;
    .locals 0

    iput-wide p1, p0, Lcom/clj/fastble/scan/b$a;->f:J

    return-object p0
.end method

.method public g([Ljava/util/UUID;)Lcom/clj/fastble/scan/b$a;
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/b$a;->a:[Ljava/util/UUID;

    return-object p0
.end method
