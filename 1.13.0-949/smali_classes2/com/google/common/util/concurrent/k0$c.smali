.class Lcom/google/common/util/concurrent/k0$c;
.super Ljava/lang/Object;
.source "FuturesGetChecked.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/k0$c$b;,
        Lcom/google/common/util/concurrent/k0$c$a;
    }
.end annotation

.annotation build Lh3/d;
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Lcom/google/common/util/concurrent/k0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/common/util/concurrent/k0$c;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$ClassValueValidator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/k0$c;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/k0$c;->a()Lcom/google/common/util/concurrent/k0$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/k0$c;->b:Lcom/google/common/util/concurrent/k0$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/google/common/util/concurrent/k0$b;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/k0$c;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/common/util/concurrent/k0$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 3
    :catchall_0
    invoke-static {}, Lcom/google/common/util/concurrent/k0;->l()Lcom/google/common/util/concurrent/k0$b;

    move-result-object v0

    return-object v0
.end method
