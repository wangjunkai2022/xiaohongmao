.class public final Lcom/qennnsad/aknkaksd/util/o;
.super Ljava/lang/Object;
.source "DateUtilsl.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateUtilsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateUtilsl.kt\ncom/qennnsad/aknkaksd/util/DateUtilsl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n1#2:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/o;",
        "",
        "<init>",
        "()V",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/util/o$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Ljava/util/TimeZone;

.field private static final c:Ljava/text/SimpleDateFormat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final d:Ljava/text/SimpleDateFormat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final e:Ljava/util/Date;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/qennnsad/aknkaksd/util/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/util/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    const-string v0, "Asia/Shanghai"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/o;->b:Ljava/util/TimeZone;

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/o;->c:Ljava/text/SimpleDateFormat;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/o;->d:Ljava/text/SimpleDateFormat;

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/o;->e:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->e:Ljava/util/Date;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/TimeZone;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->b:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static final synthetic c()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->c:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static final synthetic d()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->d:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static final e(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0, p0, p1}, Lcom/qennnsad/aknkaksd/util/o$a;->c(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/o$a;->e(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static final g(Ljava/util/List;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/util/o$a;->f(Ljava/util/List;)V

    return-void
.end method

.method public static final h(Ljava/util/List;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/util/o$a;->g(Ljava/util/List;)V

    return-void
.end method

.method public static final i()J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/o$a;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final j()J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/o$a;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final k()J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/o$a;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final l()J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/o$a;->l()J

    move-result-wide v0

    return-wide v0
.end method
