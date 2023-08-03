.class final enum Ldagger/internal/o$a;
.super Ljava/lang/Enum;
.source "MembersInjectors.java"

# interfaces
.implements Ld6/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldagger/internal/o$a;",
        ">;",
        "Ld6/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldagger/internal/o$a;

.field private static final synthetic b:[Ldagger/internal/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ldagger/internal/o$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldagger/internal/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/internal/o$a;->a:Ldagger/internal/o$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ldagger/internal/o$a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Ldagger/internal/o$a;->b:[Ldagger/internal/o$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldagger/internal/o$a;
    .locals 1

    const-class v0, Ldagger/internal/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldagger/internal/o$a;

    return-object p0
.end method

.method public static values()[Ldagger/internal/o$a;
    .locals 1

    sget-object v0, Ldagger/internal/o$a;->b:[Ldagger/internal/o$a;

    invoke-virtual {v0}, [Ldagger/internal/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldagger/internal/o$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Cannot inject members into a null reference"

    invoke-static {p1, v0}, Ldagger/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
