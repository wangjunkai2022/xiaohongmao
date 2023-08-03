.class public Lcom/clj/fastble/scan/b;
.super Ljava/lang/Object;
.source "BleScanRuleConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/scan/b$a;
    }
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
    iput-object v0, p0, Lcom/clj/fastble/scan/b;->a:[Ljava/util/UUID;

    .line 3
    iput-object v0, p0, Lcom/clj/fastble/scan/b;->b:[Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/clj/fastble/scan/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/clj/fastble/scan/b;->d:Z

    .line 6
    iput-boolean v0, p0, Lcom/clj/fastble/scan/b;->e:Z

    const-wide/16 v0, 0x2710

    .line 7
    iput-wide v0, p0, Lcom/clj/fastble/scan/b;->f:J

    return-void
.end method

.method static synthetic a(Lcom/clj/fastble/scan/b;[Ljava/util/UUID;)[Ljava/util/UUID;
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/b;->a:[Ljava/util/UUID;

    return-object p1
.end method

.method static synthetic b(Lcom/clj/fastble/scan/b;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/b;->b:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/clj/fastble/scan/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/b;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/clj/fastble/scan/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/clj/fastble/scan/b;->d:Z

    return p1
.end method

.method static synthetic e(Lcom/clj/fastble/scan/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/clj/fastble/scan/b;->e:Z

    return p1
.end method

.method static synthetic f(Lcom/clj/fastble/scan/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/clj/fastble/scan/b;->f:J

    return-wide p1
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/scan/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/scan/b;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/clj/fastble/scan/b;->f:J

    return-wide v0
.end method

.method public j()[Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/scan/b;->a:[Ljava/util/UUID;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/clj/fastble/scan/b;->d:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/clj/fastble/scan/b;->e:Z

    return v0
.end method
