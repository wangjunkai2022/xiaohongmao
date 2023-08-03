.class public final enum Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;
.super Ljava/lang/Enum;
.source "ErrorScopeKind.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum CAPTURED_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum ERASED_RECEIVER_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum ERROR_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum INTEGER_LITERAL_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum NON_CLASSIFIER_SUPER_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum SCOPE_FOR_ABBREVIATION_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum SCOPE_FOR_ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum SCOPE_FOR_ERROR_RESOLUTION_CANDIDATE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum STUB_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

.field public static final enum UNSUPPORTED_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;


# instance fields
.field private final debugMessage:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->CAPTURED_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->INTEGER_LITERAL_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->ERASED_RECEIVER_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->SCOPE_FOR_ABBREVIATION_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->STUB_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->NON_CLASSIFIER_SUPER_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->ERROR_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->UNSUPPORTED_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->SCOPE_FOR_ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->SCOPE_FOR_ERROR_RESOLUTION_CANDIDATE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "CAPTURED_TYPE_SCOPE"

    const/4 v2, 0x0

    const-string v3, "No member resolution should be done on captured type, it used only during constraint system resolution"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->CAPTURED_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "INTEGER_LITERAL_TYPE_SCOPE"

    const/4 v2, 0x1

    const-string v3, "Scope for integer literal type (%s)"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->INTEGER_LITERAL_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    .line 3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "ERASED_RECEIVER_TYPE_SCOPE"

    const/4 v2, 0x2

    const-string v3, "Error scope for erased receiver type"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->ERASED_RECEIVER_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    .line 4
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "SCOPE_FOR_ABBREVIATION_TYPE"

    const/4 v2, 0x3

    const-string v3, "Scope for abbreviation %s"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->SCOPE_FOR_ABBREVIATION_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    .line 5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "STUB_TYPE_SCOPE"

    const/4 v2, 0x4

    const-string v3, "Scope for stub type %s"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->STUB_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    .line 6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "NON_CLASSIFIER_SUPER_TYPE_SCOPE"

    const/4 v2, 0x5

    const-string v3, "A scope for common supertype which is not a normal classifier"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->NON_CLASSIFIER_SUPER_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    .line 7
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "ERROR_TYPE_SCOPE"

    const/4 v2, 0x6

    const-string v3, "Scope for error type %s"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->ERROR_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    .line 8
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "UNSUPPORTED_TYPE_SCOPE"

    const/4 v2, 0x7

    const-string v3, "Scope for unsupported type %s"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->UNSUPPORTED_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    .line 9
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "SCOPE_FOR_ERROR_CLASS"

    const/16 v2, 0x8

    const-string v3, "Error scope for class %s with arguments: %s"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->SCOPE_FOR_ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    .line 10
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const-string v1, "SCOPE_FOR_ERROR_RESOLUTION_CANDIDATE"

    const/16 v2, 0x9

    const-string v3, "Error resolution candidate for call %s"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->SCOPE_FOR_ERROR_RESOLUTION_CANDIDATE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->$values()[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->debugMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    return-object v0
.end method


# virtual methods
.method public final getDebugMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->debugMessage:Ljava/lang/String;

    return-object v0
.end method
