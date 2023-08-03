.class final synthetic Lcom/google/firebase/components/y;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lo3/a$a;


# instance fields
.field private final a:Lo3/a$a;

.field private final b:Lo3/a$a;


# direct methods
.method private constructor <init>(Lo3/a$a;Lo3/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/y;->a:Lo3/a$a;

    iput-object p2, p0, Lcom/google/firebase/components/y;->b:Lo3/a$a;

    return-void
.end method

.method public static b(Lo3/a$a;Lo3/a$a;)Lo3/a$a;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/y;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/y;-><init>(Lo3/a$a;Lo3/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Lo3/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/y;->a:Lo3/a$a;

    iget-object v1, p0, Lcom/google/firebase/components/y;->b:Lo3/a$a;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/components/b0;->e(Lo3/a$a;Lo3/a$a;Lo3/b;)V

    return-void
.end method
