.class final Lcom/google/android/datatransport/runtime/b;
.super Lcom/google/android/datatransport/runtime/n;
.source "AutoValue_SendRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/b$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/o;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/datatransport/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/d<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/datatransport/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/f<",
            "*[B>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/datatransport/c;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/o;Ljava/lang/String;Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/f;Lcom/google/android/datatransport/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/o;",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/d<",
            "*>;",
            "Lcom/google/android/datatransport/f<",
            "*[B>;",
            "Lcom/google/android/datatransport/c;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/n;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/b;->a:Lcom/google/android/datatransport/runtime/o;

    .line 4
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/b;->c:Lcom/google/android/datatransport/d;

    .line 6
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/b;->d:Lcom/google/android/datatransport/f;

    .line 7
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/b;->e:Lcom/google/android/datatransport/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/datatransport/runtime/o;Ljava/lang/String;Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/f;Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/runtime/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/datatransport/runtime/b;-><init>(Lcom/google/android/datatransport/runtime/o;Ljava/lang/String;Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/f;Lcom/google/android/datatransport/c;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b;->e:Lcom/google/android/datatransport/c;

    return-object v0
.end method

.method c()Lcom/google/android/datatransport/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/d<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b;->c:Lcom/google/android/datatransport/d;

    return-object v0
.end method

.method e()Lcom/google/android/datatransport/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/f<",
            "*[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b;->d:Lcom/google/android/datatransport/f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lcom/google/android/datatransport/runtime/n;

    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->a:Lcom/google/android/datatransport/runtime/o;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->f()Lcom/google/android/datatransport/runtime/o;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->c:Lcom/google/android/datatransport/d;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lcom/google/android/datatransport/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->d:Lcom/google/android/datatransport/f;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->e()Lcom/google/android/datatransport/f;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->e:Lcom/google/android/datatransport/c;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->b()Lcom/google/android/datatransport/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()Lcom/google/android/datatransport/runtime/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b;->a:Lcom/google/android/datatransport/runtime/o;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b;->a:Lcom/google/android/datatransport/runtime/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/b;->c:Lcom/google/android/datatransport/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/b;->d:Lcom/google/android/datatransport/f;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->e:Lcom/google/android/datatransport/c;

    invoke-virtual {v1}, Lcom/google/android/datatransport/c;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRequest{transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->a:Lcom/google/android/datatransport/runtime/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->c:Lcom/google/android/datatransport/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->d:Lcom/google/android/datatransport/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/b;->e:Lcom/google/android/datatransport/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
