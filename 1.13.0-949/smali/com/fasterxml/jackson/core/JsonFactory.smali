.class public Lcom/fasterxml/jackson/core/JsonFactory;
.super Lcom/fasterxml/jackson/core/TokenStreamFactory;
.source "JsonFactory.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/n;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    }
.end annotation


# static fields
.field public static final DEFAULT_QUOTE_CHAR:C = '\"'

.field public static final DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/j;

.field public static final FORMAT_NAME_JSON:Ljava/lang/String; = "JSON"

.field private static final n:J = 0x2L

.field protected static final o:I

.field protected static final p:I

.field protected static final q:I


# instance fields
.field protected final transient b:Lcom/fasterxml/jackson/core/sym/b;

.field protected final transient c:Lcom/fasterxml/jackson/core/sym/a;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Lcom/fasterxml/jackson/core/h;

.field protected h:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field protected i:Lcom/fasterxml/jackson/core/io/InputDecorator;

.field protected j:Lcom/fasterxml/jackson/core/io/OutputDecorator;

.field protected k:Lcom/fasterxml/jackson/core/j;

.field protected l:I

.field protected final m:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->o:I

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->p:I

    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->q:I

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/h;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/h;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;-><init>()V

    .line 12
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/b;->l()Lcom/fasterxml/jackson/core/sym/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->b:Lcom/fasterxml/jackson/core/sym/b;

    .line 13
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/a;->y()Lcom/fasterxml/jackson/core/sym/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lcom/fasterxml/jackson/core/sym/a;

    .line 14
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->o:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    .line 15
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->p:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    .line 16
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->q:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 17
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/j;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    .line 18
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    .line 19
    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    .line 20
    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    .line 21
    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 22
    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 23
    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    .line 24
    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->h:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 25
    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    .line 26
    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->l:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->l:I

    .line 27
    iget-char p1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->m:C

    iput-char p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->m:C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/d;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;-><init>()V

    .line 29
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/b;->l()Lcom/fasterxml/jackson/core/sym/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->b:Lcom/fasterxml/jackson/core/sym/b;

    .line 30
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/a;->y()Lcom/fasterxml/jackson/core/sym/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lcom/fasterxml/jackson/core/sym/a;

    .line 31
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->o:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    .line 32
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->p:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    .line 33
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->q:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 34
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/j;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    .line 36
    iget v0, p1, Lcom/fasterxml/jackson/core/k;->a:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    .line 37
    iget v0, p1, Lcom/fasterxml/jackson/core/k;->b:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    .line 38
    iget v0, p1, Lcom/fasterxml/jackson/core/k;->c:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 39
    iget-object v0, p1, Lcom/fasterxml/jackson/core/k;->d:Lcom/fasterxml/jackson/core/io/InputDecorator;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 40
    iget-object v0, p1, Lcom/fasterxml/jackson/core/k;->e:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    .line 41
    iget-object v0, p1, Lcom/fasterxml/jackson/core/d;->i:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 42
    iget-object v0, p1, Lcom/fasterxml/jackson/core/d;->j:Lcom/fasterxml/jackson/core/j;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    .line 43
    iget v0, p1, Lcom/fasterxml/jackson/core/d;->k:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->l:I

    .line 44
    iget-char p1, p1, Lcom/fasterxml/jackson/core/d;->l:C

    iput-char p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->m:C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/h;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;-><init>()V

    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/b;->l()Lcom/fasterxml/jackson/core/sym/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->b:Lcom/fasterxml/jackson/core/sym/b;

    .line 4
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/a;->y()Lcom/fasterxml/jackson/core/sym/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lcom/fasterxml/jackson/core/sym/a;

    .line 5
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->o:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    .line 6
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->p:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    .line 7
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->q:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 8
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/j;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    .line 9
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    const/16 p1, 0x22

    .line 10
    iput-char p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->m:C

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/k;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/k<",
            "**>;Z)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;-><init>()V

    .line 46
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/b;->l()Lcom/fasterxml/jackson/core/sym/b;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->b:Lcom/fasterxml/jackson/core/sym/b;

    .line 47
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/a;->y()Lcom/fasterxml/jackson/core/sym/a;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lcom/fasterxml/jackson/core/sym/a;

    .line 48
    sget p2, Lcom/fasterxml/jackson/core/JsonFactory;->o:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    .line 49
    sget p2, Lcom/fasterxml/jackson/core/JsonFactory;->p:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    .line 50
    sget p2, Lcom/fasterxml/jackson/core/JsonFactory;->q:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 51
    sget-object p2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/j;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    .line 53
    iget v0, p1, Lcom/fasterxml/jackson/core/k;->a:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    .line 54
    iget v0, p1, Lcom/fasterxml/jackson/core/k;->b:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    .line 55
    iget v0, p1, Lcom/fasterxml/jackson/core/k;->c:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 56
    iget-object v0, p1, Lcom/fasterxml/jackson/core/k;->d:Lcom/fasterxml/jackson/core/io/InputDecorator;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 57
    iget-object p1, p1, Lcom/fasterxml/jackson/core/k;->e:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    .line 58
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 59
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->l:I

    const/16 p1, 0x22

    .line 61
    iput-char p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->m:C

    return-void
.end method

.method public static builder()Lcom/fasterxml/jackson/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/core/k<",
            "**>;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/core/d;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/d;-><init>()V

    return-object v0
.end method

.method private final x()Z
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSON"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final y(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected A()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/h;)V

    return-object v0
.end method

.method public _getBufferRecycler()Lcom/fasterxml/jackson/core/util/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/core/util/b;->b()Lcom/fasterxml/jackson/core/util/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/a;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/a;-><init>()V

    return-object v0
.end method

.method protected c(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed copy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->version()Lcom/fasterxml/jackson/core/Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") does not override copy(); it has to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canHandleBinaryNatively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canParseAsync()Z
    .locals 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->x()Z

    move-result v0

    return v0
.end method

.method public canUseCharArrays()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canUseSchema(Lcom/fasterxml/jackson/core/c;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final configure(Lcom/fasterxml/jackson/core/JsonFactory$Feature;Z)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->enable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->disable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public copy()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 2

    .line 1
    const-class v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->c(Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/h;)V

    return-object v0
.end method

.method public createGenerator(Ljava/io/DataOutput;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->a(Ljava/io/DataOutput;)Ljava/io/OutputStream;

    move-result-object p1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createGenerator(Ljava/io/DataOutput;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->a(Ljava/io/DataOutput;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/io/d;->y(Lcom/fasterxml/jackson/core/JsonEncoding;)V

    .line 13
    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne p2, v1, :cond_0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->u(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->q(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->r(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->w(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->j(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/io/d;->y(Lcom/fasterxml/jackson/core/JsonEncoding;)V

    .line 3
    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->u(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->q(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->r(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->w(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->j(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->w(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->j(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser([B)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([B)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser([BII)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createNonBlockingByteArrayParser()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Non-blocking source not (yet?) supported for this format (%s)"

    .line 1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->y(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->k(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lcom/fasterxml/jackson/core/sym/a;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/sym/a;->G(I)Lcom/fasterxml/jackson/core/sym/a;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/fasterxml/jackson/core/json/async/a;

    iget v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    invoke-direct {v2, v0, v3, v1}, Lcom/fasterxml/jackson/core/json/async/a;-><init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/sym/a;)V

    return-object v2
.end method

.method public createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->s(Ljava/io/DataInput;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/DataInput;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->l(Ljava/io/DataInput;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, p1}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->t(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->m(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->t(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->m(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->v(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->n(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 22
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-nez v0, :cond_1

    const v0, 0x8000

    if-gt v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->canUseCharArrays()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v4

    .line 24
    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/core/io/d;->k(I)[C

    move-result-object v1

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0, v3, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonFactory;->p([CIILcom/fasterxml/jackson/core/io/d;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1

    .line 27
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->b(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->t(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->m(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser([B)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 13
    array-length v3, p1

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;[BII)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->m(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->o([BIILcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->e(Ljava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;[BII)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->m(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->o([BIILcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser([C)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([CII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser([CII)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/io/CharArrayReader;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->e(Ljava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 32
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/core/JsonFactory;->p([CIILcom/fasterxml/jackson/core/io/d;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->canHandleBinaryNatively()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;->construct(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p1

    return-object p1
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    return-object p0
.end method

.method protected e(Ljava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->canHandleBinaryNatively()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/ContentReference;->construct(ZLjava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p1

    return-object p1
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    return-object p0
.end method

.method public getCharacterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-object v0
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    return-object v0
.end method

.method public getFormatGeneratorFeatures()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/core/JsonFactory;

    if-ne v0, v1, :cond_0

    const-string v0, "JSON"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormatParserFeatures()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFormatReadFeatureType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/core/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormatWriteFeatureType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/core/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGeneratorFeatures()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    return v0
.end method

.method public getInputDecorator()Lcom/fasterxml/jackson/core/io/InputDecorator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    return-object v0
.end method

.method public getOutputDecorator()Lcom/fasterxml/jackson/core/io/OutputDecorator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    return-object v0
.end method

.method public final getParserFeatures()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    return v0
.end method

.method public getRootValueSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected h(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/ContentReference;->unknown()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/a;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/io/d;-><init>(Lcom/fasterxml/jackson/core/util/a;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V

    return-object v0
.end method

.method public hasFormat(Lcom/fasterxml/jackson/core/format/c;)Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/core/JsonFactory;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->z(Lcom/fasterxml/jackson/core/format/c;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected i(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/d;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/a;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/io/d;-><init>(Lcom/fasterxml/jackson/core/util/a;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/StreamReadFeature;)Z
    .locals 1

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Z
    .locals 1

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected j(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/fasterxml/jackson/core/json/k;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    iget-char v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->m:C

    move-object v0, v6

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/k;-><init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/h;Ljava/io/Writer;C)V

    .line 2
    iget p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->l:I

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/json/c;->y0(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/json/c;->u0(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    .line 7
    sget-object p2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/j;

    if-eq p1, p2, :cond_2

    .line 8
    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/json/c;->A0(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/core/JsonGenerator;

    :cond_2
    return-object v6
.end method

.method protected k(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/a;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/io/d;-><init>(Lcom/fasterxml/jackson/core/util/a;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V

    return-object v0
.end method

.method protected l(Ljava/io/DataInput;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "InputData source not (yet?) supported for this format (%s)"

    .line 1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->y(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/fasterxml/jackson/core/json/a;->l(Ljava/io/DataInput;)I

    move-result v7

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lcom/fasterxml/jackson/core/sym/a;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/sym/a;->G(I)Lcom/fasterxml/jackson/core/sym/a;

    move-result-object v6

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/core/json/h;

    iget v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    iget-object v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    move-object v1, v0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/core/json/h;-><init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/DataInput;Lcom/fasterxml/jackson/core/h;Lcom/fasterxml/jackson/core/sym/a;I)V

    return-object v0
.end method

.method protected m(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/core/json/a;

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/core/json/a;-><init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lcom/fasterxml/jackson/core/sym/a;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->b:Lcom/fasterxml/jackson/core/sym/b;

    iget v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/a;->c(ILcom/fasterxml/jackson/core/h;Lcom/fasterxml/jackson/core/sym/a;Lcom/fasterxml/jackson/core/sym/b;I)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method protected n(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/fasterxml/jackson/core/json/g;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->b:Lcom/fasterxml/jackson/core/sym/b;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/sym/b;->p(I)Lcom/fasterxml/jackson/core/sym/b;

    move-result-object v5

    move-object v0, v6

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/g;-><init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/Reader;Lcom/fasterxml/jackson/core/h;Lcom/fasterxml/jackson/core/sym/b;)V

    return-object v6
.end method

.method protected o([BIILcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/core/json/a;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/a;-><init>(Lcom/fasterxml/jackson/core/io/d;[BII)V

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lcom/fasterxml/jackson/core/sym/a;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->b:Lcom/fasterxml/jackson/core/sym/b;

    iget v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/a;->c(ILcom/fasterxml/jackson/core/h;Lcom/fasterxml/jackson/core/sym/a;Lcom/fasterxml/jackson/core/sym/b;I)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method protected p([CIILcom/fasterxml/jackson/core/io/d;Z)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/fasterxml/jackson/core/json/g;

    iget v3, v0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    iget-object v5, v0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    iget-object v1, v0, Lcom/fasterxml/jackson/core/JsonFactory;->b:Lcom/fasterxml/jackson/core/sym/b;

    iget v2, v0, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    .line 2
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/sym/b;->p(I)Lcom/fasterxml/jackson/core/sym/b;

    move-result-object v6

    add-int v9, p2, p3

    const/4 v4, 0x0

    move-object v1, v11

    move-object/from16 v2, p4

    move-object v7, p1

    move v8, p2

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/fasterxml/jackson/core/json/g;-><init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/Reader;Lcom/fasterxml/jackson/core/h;Lcom/fasterxml/jackson/core/sym/b;[CIIZ)V

    return-object v11
.end method

.method protected q(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/fasterxml/jackson/core/json/i;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    iget-char v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->m:C

    move-object v0, v6

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/i;-><init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/h;Ljava/io/OutputStream;C)V

    .line 2
    iget p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->l:I

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/json/c;->y0(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/json/c;->u0(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    .line 7
    sget-object p2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/j;

    if-eq p1, p2, :cond_2

    .line 8
    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/json/c;->A0(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/core/JsonGenerator;

    :cond_2
    return-object v6
.end method

.method protected r(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lcom/fasterxml/jackson/core/io/k;

    invoke-direct {p2, p3, p1}, Lcom/fasterxml/jackson/core/io/k;-><init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/OutputStream;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p3, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p3
.end method

.method public rebuild()Lcom/fasterxml/jackson/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/core/k<",
            "**>;"
        }
    .end annotation

    const-string v0, "Factory implementation for format (%s) MUST override `rebuild()` method"

    .line 1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->y(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/d;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/d;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    return-object v0
.end method

.method public requiresCustomCodec()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requiresPropertyOrdering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final s(Ljava/io/DataInput;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/DataInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/DataInput;)Ljava/io/DataInput;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-object p0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lcom/fasterxml/jackson/core/h;

    return-object p0
.end method

.method public setInputDecorator(Lcom/fasterxml/jackson/core/io/InputDecorator;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    return-object p0
.end method

.method public setOutputDecorator(Lcom/fasterxml/jackson/core/io/OutputDecorator;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    return-object p0
.end method

.method public setRootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method protected final t(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method protected final u(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method protected final v(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/json/f;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method protected final w(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method protected z(Lcom/fasterxml/jackson/core/format/c;)Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/fasterxml/jackson/core/json/a;->h(Lcom/fasterxml/jackson/core/format/c;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object p1

    return-object p1
.end method
