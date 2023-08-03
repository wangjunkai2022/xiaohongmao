.class public final Lh/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lh/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lh/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lh/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lr/c;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lh/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lh/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lh/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lh/b;->d:Ljava/lang/String;

    iget-object v0, p1, Lr/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lh/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lh/b;->b:Ljava/lang/String;

    iget-object p2, p1, Lr/c;->d:Ljava/lang/String;

    iput-object p2, p0, Lh/b;->c:Ljava/lang/String;

    iget-object p1, p1, Lr/c;->e:Ljava/lang/String;

    iput-object p1, p0, Lh/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/b;->d:Ljava/lang/String;

    return-object v0
.end method
