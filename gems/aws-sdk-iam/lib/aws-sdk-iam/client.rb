# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iam)

module Aws::IAM
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :iam

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::Query)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds a new client ID (also known as audience) to the list of client
    # IDs already registered for the specified IAM OpenID Connect (OIDC)
    # provider resource.
    #
    # This action is idempotent; it does not fail or return an error if you
    # add an existing client ID to the provider.
    #
    # @option params [required, String] :open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC)
    #   provider resource to add the client ID to. You can get a list of OIDC
    #   provider ARNs by using the ListOpenIDConnectProviders action.
    #
    # @option params [required, String] :client_id
    #   The client ID (also known as audience) to add to the IAM OpenID
    #   Connect provider resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_client_id_to_open_id_connect_provider({
    #     open_id_connect_provider_arn: "arnType", # required
    #     client_id: "clientIDType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddClientIDToOpenIDConnectProvider AWS API Documentation
    #
    # @overload add_client_id_to_open_id_connect_provider(params = {})
    # @param [Hash] params ({})
    def add_client_id_to_open_id_connect_provider(params = {}, options = {})
      req = build_request(:add_client_id_to_open_id_connect_provider, params)
      req.send_request(options)
    end

    # Adds the specified IAM role to the specified instance profile.
    #
    # <note markdown="1"> The caller of this API must be granted the `PassRole` permission on
    # the IAM role by a permission policy.
    #
    #  </note>
    #
    # For more information about roles, go to [Working with Roles][1]. For
    # more information about instance profiles, go to [About Instance
    # Profiles][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html
    #
    # @option params [required, String] :instance_profile_name
    #   The name of the instance profile to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :role_name
    #   The name of the role to add.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_role_to_instance_profile({
    #     instance_profile_name: "instanceProfileNameType", # required
    #     role_name: "roleNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddRoleToInstanceProfile AWS API Documentation
    #
    # @overload add_role_to_instance_profile(params = {})
    # @param [Hash] params ({})
    def add_role_to_instance_profile(params = {}, options = {})
      req = build_request(:add_role_to_instance_profile, params)
      req.send_request(options)
    end

    # Adds the specified user to the specified group.
    #
    # @option params [required, String] :group_name
    #   The name of the group to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :user_name
    #   The name of the user to add.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_user_to_group({
    #     group_name: "groupNameType", # required
    #     user_name: "existingUserNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddUserToGroup AWS API Documentation
    #
    # @overload add_user_to_group(params = {})
    # @param [Hash] params ({})
    def add_user_to_group(params = {}, options = {})
      req = build_request(:add_user_to_group, params)
      req.send_request(options)
    end

    # Attaches the specified managed policy to the specified IAM group.
    #
    # You use this API to attach a managed policy to a group. To embed an
    # inline policy in a group, use PutGroupPolicy.
    #
    # For more information about policies, see [Managed Policies and Inline
    # Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :group_name
    #   The name (friendly name, not ARN) of the group to attach the policy
    #   to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_group_policy({
    #     group_name: "groupNameType", # required
    #     policy_arn: "arnType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachGroupPolicy AWS API Documentation
    #
    # @overload attach_group_policy(params = {})
    # @param [Hash] params ({})
    def attach_group_policy(params = {}, options = {})
      req = build_request(:attach_group_policy, params)
      req.send_request(options)
    end

    # Attaches the specified managed policy to the specified IAM role.
    #
    # When you attach a managed policy to a role, the managed policy becomes
    # part of the role's permission (access) policy. You cannot use a
    # managed policy as the role's trust policy. The role's trust policy
    # is created at the same time as the role, using CreateRole. You can
    # update a role's trust policy using UpdateAssumeRolePolicy.
    #
    # Use this API to attach a *managed* policy to a role. To embed an
    # inline policy in a role, use PutRolePolicy. For more information about
    # policies, see [Managed Policies and Inline Policies][1] in the *IAM
    # User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :role_name
    #   The name (friendly name, not ARN) of the role to attach the policy to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_role_policy({
    #     role_name: "roleNameType", # required
    #     policy_arn: "arnType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachRolePolicy AWS API Documentation
    #
    # @overload attach_role_policy(params = {})
    # @param [Hash] params ({})
    def attach_role_policy(params = {}, options = {})
      req = build_request(:attach_role_policy, params)
      req.send_request(options)
    end

    # Attaches the specified managed policy to the specified user.
    #
    # You use this API to attach a *managed* policy to a user. To embed an
    # inline policy in a user, use PutUserPolicy.
    #
    # For more information about policies, see [Managed Policies and Inline
    # Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :user_name
    #   The name (friendly name, not ARN) of the IAM user to attach the policy
    #   to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_user_policy({
    #     user_name: "userNameType", # required
    #     policy_arn: "arnType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachUserPolicy AWS API Documentation
    #
    # @overload attach_user_policy(params = {})
    # @param [Hash] params ({})
    def attach_user_policy(params = {}, options = {})
      req = build_request(:attach_user_policy, params)
      req.send_request(options)
    end

    # Changes the password of the IAM user who is calling this action. The
    # root account password is not affected by this action.
    #
    # To change the password for a different user, see UpdateLoginProfile.
    # For more information about modifying passwords, see [Managing
    # Passwords][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html
    #
    # @option params [required, String] :old_password
    #   The IAM user's current password.
    #
    # @option params [required, String] :new_password
    #   The new password. The new password must conform to the AWS account's
    #   password policy, if one exists.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of almost any printable ASCII character from the
    #   space (\\u0020) through the end of the ASCII character range
    #   (\\u00FF). You can also include the tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D) characters. Although any of
    #   these characters are valid in a password, note that many tools, such
    #   as the AWS Management Console, might restrict the ability to enter
    #   certain characters because they have special meaning within that tool.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_password({
    #     old_password: "passwordType", # required
    #     new_password: "passwordType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ChangePassword AWS API Documentation
    #
    # @overload change_password(params = {})
    # @param [Hash] params ({})
    def change_password(params = {}, options = {})
      req = build_request(:change_password, params)
      req.send_request(options)
    end

    # Creates a new AWS secret access key and corresponding AWS access key
    # ID for the specified user. The default status for new keys is
    # `Active`.
    #
    # If you do not specify a user name, IAM determines the user name
    # implicitly based on the AWS access key ID signing the request. Because
    # this action works for access keys under the AWS account, you can use
    # this action to manage root credentials even if the AWS account has no
    # associated users.
    #
    # For information about limits on the number of keys you can create, see
    # [Limitations on IAM Entities][1] in the *IAM User Guide*.
    #
    # To ensure the security of your AWS account, the secret access key is
    # accessible only during key and user creation. You must save the key
    # (for example, in a text file) if you want to be able to access it
    # again. If a secret key is lost, you can delete the access keys for the
    # associated user and then create new keys.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    #
    # @option params [String] :user_name
    #   The name of the IAM user that the new key will belong to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::CreateAccessKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessKeyResponse#access_key #access_key} => Types::AccessKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_key({
    #     user_name: "existingUserNameType",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_key.user_name #=> String
    #   resp.access_key.access_key_id #=> String
    #   resp.access_key.status #=> String, one of "Active", "Inactive"
    #   resp.access_key.secret_access_key #=> String
    #   resp.access_key.create_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccessKey AWS API Documentation
    #
    # @overload create_access_key(params = {})
    # @param [Hash] params ({})
    def create_access_key(params = {}, options = {})
      req = build_request(:create_access_key, params)
      req.send_request(options)
    end

    # Creates an alias for your AWS account. For information about using an
    # AWS account alias, see [Using an Alias for Your AWS Account ID][1] in
    # the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html
    #
    # @option params [required, String] :account_alias
    #   The account alias to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of lowercase letters, digits, and dashes. You
    #   cannot start or finish with a dash, nor can you have two dashes in a
    #   row.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_alias({
    #     account_alias: "accountAliasType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccountAlias AWS API Documentation
    #
    # @overload create_account_alias(params = {})
    # @param [Hash] params ({})
    def create_account_alias(params = {}, options = {})
      req = build_request(:create_account_alias, params)
      req.send_request(options)
    end

    # Creates a new group.
    #
    # For information about the number of groups you can create, see
    # [Limitations on IAM Entities][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    #
    # @option params [String] :path
    #   The path to the group. For more information about paths, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :group_name
    #   The name of the group to create. Do not include the path in this
    #   value.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-. The group name must be unique within the account. Group names
    #   are not distinguished by case. For example, you cannot create groups
    #   named both "ADMINS" and "admins".
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     path: "pathType",
    #     group_name: "groupNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.path #=> String
    #   resp.group.group_name #=> String
    #   resp.group.group_id #=> String
    #   resp.group.arn #=> String
    #   resp.group.create_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Creates a new instance profile. For information about instance
    # profiles, go to [About Instance Profiles][1].
    #
    # For information about the number of instance profiles you can create,
    # see [Limitations on IAM Entities][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    #
    # @option params [required, String] :instance_profile_name
    #   The name of the instance profile to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :path
    #   The path to the instance profile. For more information about paths,
    #   see [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::CreateInstanceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceProfileResponse#instance_profile #instance_profile} => Types::InstanceProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance_profile({
    #     instance_profile_name: "instanceProfileNameType", # required
    #     path: "pathType",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_profile.path #=> String
    #   resp.instance_profile.instance_profile_name #=> String
    #   resp.instance_profile.instance_profile_id #=> String
    #   resp.instance_profile.arn #=> String
    #   resp.instance_profile.create_date #=> Time
    #   resp.instance_profile.roles #=> Array
    #   resp.instance_profile.roles[0].path #=> String
    #   resp.instance_profile.roles[0].role_name #=> String
    #   resp.instance_profile.roles[0].role_id #=> String
    #   resp.instance_profile.roles[0].arn #=> String
    #   resp.instance_profile.roles[0].create_date #=> Time
    #   resp.instance_profile.roles[0].assume_role_policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateInstanceProfile AWS API Documentation
    #
    # @overload create_instance_profile(params = {})
    # @param [Hash] params ({})
    def create_instance_profile(params = {}, options = {})
      req = build_request(:create_instance_profile, params)
      req.send_request(options)
    end

    # Creates a password for the specified user, giving the user the ability
    # to access AWS services through the AWS Management Console. For more
    # information about managing passwords, see [Managing Passwords][1] in
    # the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html
    #
    # @option params [required, String] :user_name
    #   The name of the IAM user to create a password for. The user must
    #   already exist.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :password
    #   The new password for the user.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of almost any printable ASCII character from the
    #   space (\\u0020) through the end of the ASCII character range
    #   (\\u00FF). You can also include the tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D) characters. Although any of
    #   these characters are valid in a password, note that many tools, such
    #   as the AWS Management Console, might restrict the ability to enter
    #   certain characters because they have special meaning within that tool.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [Boolean] :password_reset_required
    #   Specifies whether the user is required to set a new password on next
    #   sign-in.
    #
    # @return [Types::CreateLoginProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoginProfileResponse#login_profile #login_profile} => Types::LoginProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_login_profile({
    #     user_name: "userNameType", # required
    #     password: "passwordType", # required
    #     password_reset_required: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.login_profile.user_name #=> String
    #   resp.login_profile.create_date #=> Time
    #   resp.login_profile.password_reset_required #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateLoginProfile AWS API Documentation
    #
    # @overload create_login_profile(params = {})
    # @param [Hash] params ({})
    def create_login_profile(params = {}, options = {})
      req = build_request(:create_login_profile, params)
      req.send_request(options)
    end

    # Creates an IAM entity to describe an identity provider (IdP) that
    # supports [OpenID Connect (OIDC)][1].
    #
    # The OIDC provider that you create with this operation can be used as a
    # principal in a role's trust policy to establish a trust relationship
    # between AWS and the OIDC provider.
    #
    # When you create the IAM OIDC provider, you specify the URL of the OIDC
    # identity provider (IdP) to trust, a list of client IDs (also known as
    # audiences) that identify the application or applications that are
    # allowed to authenticate using the OIDC provider, and a list of
    # thumbprints of the server certificate(s) that the IdP uses. You get
    # all of this information from the OIDC IdP that you want to use for
    # access to AWS.
    #
    # <note markdown="1"> Because trust for the OIDC provider is ultimately derived from the IAM
    # provider that this action creates, it is a best practice to limit
    # access to the CreateOpenIDConnectProvider action to highly-privileged
    # users.
    #
    #  </note>
    #
    #
    #
    # [1]: http://openid.net/connect/
    #
    # @option params [required, String] :url
    #   The URL of the identity provider. The URL must begin with "https://"
    #   and should correspond to the `iss` claim in the provider's OpenID
    #   Connect ID tokens. Per the OIDC standard, path components are allowed
    #   but query parameters are not. Typically the URL consists of only a
    #   host name, like "https://server.example.org" or
    #   "https://example.com".
    #
    #   You cannot register the same provider multiple times in a single AWS
    #   account. If you try to submit a URL that has already been used for an
    #   OpenID Connect provider in the AWS account, you will get an error.
    #
    # @option params [Array<String>] :client_id_list
    #   A list of client IDs (also known as audiences). When a mobile or web
    #   app registers with an OpenID Connect provider, they establish a value
    #   that identifies the application. (This is the value that's sent as
    #   the `client_id` parameter on OAuth requests.)
    #
    #   You can register multiple client IDs with the same provider. For
    #   example, you might have multiple applications that use the same OIDC
    #   provider. You cannot register more than 100 client IDs with a single
    #   IAM OIDC provider.
    #
    #   There is no defined format for a client ID. The
    #   `CreateOpenIDConnectProviderRequest` action accepts client IDs up to
    #   255 characters long.
    #
    # @option params [required, Array<String>] :thumbprint_list
    #   A list of server certificate thumbprints for the OpenID Connect (OIDC)
    #   identity provider's server certificate(s). Typically this list
    #   includes only one entry. However, IAM lets you have up to five
    #   thumbprints for an OIDC provider. This lets you maintain multiple
    #   thumbprints if the identity provider is rotating certificates.
    #
    #   The server certificate thumbprint is the hex-encoded SHA-1 hash value
    #   of the X.509 certificate used by the domain where the OpenID Connect
    #   provider makes its keys available. It is always a 40-character string.
    #
    #   You must provide at least one thumbprint when creating an IAM OIDC
    #   provider. For example, if the OIDC provider is `server.example.com`
    #   and the provider stores its keys at
    #   "https://keys.server.example.com/openid-connect", the thumbprint
    #   string would be the hex-encoded SHA-1 hash value of the certificate
    #   used by https://keys.server.example.com.
    #
    #   For more information about obtaining the OIDC provider's thumbprint,
    #   see [Obtaining the Thumbprint for an OpenID Connect Provider][1] in
    #   the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html
    #
    # @return [Types::CreateOpenIDConnectProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOpenIDConnectProviderResponse#open_id_connect_provider_arn #open_id_connect_provider_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_open_id_connect_provider({
    #     url: "OpenIDConnectProviderUrlType", # required
    #     client_id_list: ["clientIDType"],
    #     thumbprint_list: ["thumbprintType"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.open_id_connect_provider_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateOpenIDConnectProvider AWS API Documentation
    #
    # @overload create_open_id_connect_provider(params = {})
    # @param [Hash] params ({})
    def create_open_id_connect_provider(params = {}, options = {})
      req = build_request(:create_open_id_connect_provider, params)
      req.send_request(options)
    end

    # Creates a new managed policy for your AWS account.
    #
    # This operation creates a policy version with a version identifier of
    # `v1` and sets v1 as the policy's default version. For more
    # information about policy versions, see [Versioning for Managed
    # Policies][1] in the *IAM User Guide*.
    #
    # For more information about managed policies in general, see [Managed
    # Policies and Inline Policies][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :policy_name
    #   The friendly name of the policy.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :path
    #   The path for the policy.
    #
    #   For more information about paths, see [IAM Identifiers][1] in the *IAM
    #   User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_document
    #   The JSON policy document that you want to use as the content for the
    #   new policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :description
    #   A friendly description of the policy.
    #
    #   Typically used to store information about the permissions defined in
    #   the policy. For example, "Grants access to production DynamoDB
    #   tables."
    #
    #   The policy description is immutable. After a value is assigned, it
    #   cannot be changed.
    #
    # @return [Types::CreatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyResponse#policy #policy} => Types::Policy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy({
    #     policy_name: "policyNameType", # required
    #     path: "policyPathType",
    #     policy_document: "policyDocumentType", # required
    #     description: "policyDescriptionType",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_name #=> String
    #   resp.policy.policy_id #=> String
    #   resp.policy.arn #=> String
    #   resp.policy.path #=> String
    #   resp.policy.default_version_id #=> String
    #   resp.policy.attachment_count #=> Integer
    #   resp.policy.is_attachable #=> Boolean
    #   resp.policy.description #=> String
    #   resp.policy.create_date #=> Time
    #   resp.policy.update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicy AWS API Documentation
    #
    # @overload create_policy(params = {})
    # @param [Hash] params ({})
    def create_policy(params = {}, options = {})
      req = build_request(:create_policy, params)
      req.send_request(options)
    end

    # Creates a new version of the specified managed policy. To update a
    # managed policy, you create a new policy version. A managed policy can
    # have up to five versions. If the policy has five versions, you must
    # delete an existing version using DeletePolicyVersion before you create
    # a new version.
    #
    # Optionally, you can set the new version as the policy's default
    # version. The default version is the version that is in effect for the
    # IAM users, groups, and roles to which the policy is attached.
    #
    # For more information about managed policy versions, see [Versioning
    # for Managed Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy to which you want to
    #   add a new version.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :policy_document
    #   The JSON policy document that you want to use as the content for this
    #   new version of the policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [Boolean] :set_as_default
    #   Specifies whether to set this version as the policy's default
    #   version.
    #
    #   When this parameter is `true`, the new policy version becomes the
    #   operative version; that is, the version that is in effect for the IAM
    #   users, groups, and roles that the policy is attached to.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for Managed Policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #
    # @return [Types::CreatePolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyVersionResponse#policy_version #policy_version} => Types::PolicyVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_version({
    #     policy_arn: "arnType", # required
    #     policy_document: "policyDocumentType", # required
    #     set_as_default: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_version.document #=> String
    #   resp.policy_version.version_id #=> String
    #   resp.policy_version.is_default_version #=> Boolean
    #   resp.policy_version.create_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyVersion AWS API Documentation
    #
    # @overload create_policy_version(params = {})
    # @param [Hash] params ({})
    def create_policy_version(params = {}, options = {})
      req = build_request(:create_policy_version, params)
      req.send_request(options)
    end

    # Creates a new role for your AWS account. For more information about
    # roles, go to [Working with Roles][1]. For information about
    # limitations on role names and the number of roles you can create, go
    # to [Limitations on IAM Entities][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    #
    # @option params [String] :path
    #   The path to the role. For more information about paths, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :role_name
    #   The name of the role to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-. Role names are not distinguished by case. For example, you
    #   cannot create roles named both "PRODROLE" and "prodrole".
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :assume_role_policy_document
    #   The trust relationship policy document that grants an entity
    #   permission to assume the role.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::CreateRoleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoleResponse#role #role} => Types::Role
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_role({
    #     path: "pathType",
    #     role_name: "roleNameType", # required
    #     assume_role_policy_document: "policyDocumentType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.role.path #=> String
    #   resp.role.role_name #=> String
    #   resp.role.role_id #=> String
    #   resp.role.arn #=> String
    #   resp.role.create_date #=> Time
    #   resp.role.assume_role_policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateRole AWS API Documentation
    #
    # @overload create_role(params = {})
    # @param [Hash] params ({})
    def create_role(params = {}, options = {})
      req = build_request(:create_role, params)
      req.send_request(options)
    end

    # Creates an IAM resource that describes an identity provider (IdP) that
    # supports SAML 2.0.
    #
    # The SAML provider resource that you create with this operation can be
    # used as a principal in an IAM role's trust policy to enable federated
    # users who sign-in using the SAML IdP to assume the role. You can
    # create an IAM role that supports Web-based single sign-on (SSO) to the
    # AWS Management Console or one that supports API access to AWS.
    #
    # When you create the SAML provider resource, you upload an a SAML
    # metadata document that you get from your IdP and that includes the
    # issuer's name, expiration information, and keys that can be used to
    # validate the SAML authentication response (assertions) that the IdP
    # sends. You must generate the metadata document using the identity
    # management software that is used as your organization's IdP.
    #
    # <note markdown="1"> This operation requires [Signature Version 4][1].
    #
    #  </note>
    #
    # For more information, see [Enabling SAML 2.0 Federated Users to Access
    # the AWS Management Console][2] and [About SAML 2.0-based
    # Federation][3] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html
    # [3]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html
    #
    # @option params [required, String] :saml_metadata_document
    #   An XML document generated by an identity provider (IdP) that supports
    #   SAML 2.0. The document includes the issuer's name, expiration
    #   information, and keys that can be used to validate the SAML
    #   authentication response (assertions) that are received from the IdP.
    #   You must generate the metadata document using the identity management
    #   software that is used as your organization's IdP.
    #
    #   For more information, see [About SAML 2.0-based Federation][1] in the
    #   *IAM User Guide*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html
    #
    # @option params [required, String] :name
    #   The name of the provider to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::CreateSAMLProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSAMLProviderResponse#saml_provider_arn #saml_provider_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_saml_provider({
    #     saml_metadata_document: "SAMLMetadataDocumentType", # required
    #     name: "SAMLProviderNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.saml_provider_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateSAMLProvider AWS API Documentation
    #
    # @overload create_saml_provider(params = {})
    # @param [Hash] params ({})
    def create_saml_provider(params = {}, options = {})
      req = build_request(:create_saml_provider, params)
      req.send_request(options)
    end

    # Generates a set of credentials consisting of a user name and password
    # that can be used to access the service specified in the request. These
    # credentials are generated by IAM, and can be used only for the
    # specified service.
    #
    # You can have a maximum of two sets of service-specific credentials for
    # each supported service per user.
    #
    # The only supported service at this time is AWS CodeCommit.
    #
    # You can reset the password to a new service-generated value by calling
    # ResetServiceSpecificCredential.
    #
    # For more information about service-specific credentials, see [Using
    # IAM with AWS CodeCommit: Git Credentials, SSH Keys, and AWS Access
    # Keys][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html
    #
    # @option params [required, String] :user_name
    #   The name of the IAM user that is to be associated with the
    #   credentials. The new service-specific credentials have the same
    #   permissions as the associated user except that they can be used only
    #   to access the specified service.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :service_name
    #   The name of the AWS service that is to be associated with the
    #   credentials. The service you specify here is the only service that can
    #   be accessed using these credentials.
    #
    # @return [Types::CreateServiceSpecificCredentialResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceSpecificCredentialResponse#service_specific_credential #service_specific_credential} => Types::ServiceSpecificCredential
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_specific_credential({
    #     user_name: "userNameType", # required
    #     service_name: "serviceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_specific_credential.create_date #=> Time
    #   resp.service_specific_credential.service_name #=> String
    #   resp.service_specific_credential.service_user_name #=> String
    #   resp.service_specific_credential.service_password #=> String
    #   resp.service_specific_credential.service_specific_credential_id #=> String
    #   resp.service_specific_credential.user_name #=> String
    #   resp.service_specific_credential.status #=> String, one of "Active", "Inactive"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceSpecificCredential AWS API Documentation
    #
    # @overload create_service_specific_credential(params = {})
    # @param [Hash] params ({})
    def create_service_specific_credential(params = {}, options = {})
      req = build_request(:create_service_specific_credential, params)
      req.send_request(options)
    end

    # Creates a new IAM user for your AWS account.
    #
    # For information about limitations on the number of IAM users you can
    # create, see [Limitations on IAM Entities][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    #
    # @option params [String] :path
    #   The path for the user name. For more information about paths, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :user_name
    #   The name of the user to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-. User names are not distinguished by case. For example, you
    #   cannot create users named both "TESTUSER" and "testuser".
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     path: "pathType",
    #     user_name: "userNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.path #=> String
    #   resp.user.user_name #=> String
    #   resp.user.user_id #=> String
    #   resp.user.arn #=> String
    #   resp.user.create_date #=> Time
    #   resp.user.password_last_used #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Creates a new virtual MFA device for the AWS account. After creating
    # the virtual MFA, use EnableMFADevice to attach the MFA device to an
    # IAM user. For more information about creating and working with virtual
    # MFA devices, go to [Using a Virtual MFA Device][1] in the *IAM User
    # Guide*.
    #
    # For information about limits on the number of MFA devices you can
    # create, see [Limitations on Entities][2] in the *IAM User Guide*.
    #
    # The seed information contained in the QR code and the Base32 string
    # should be treated like any other secret access information, such as
    # your AWS access keys or your passwords. After you provision your
    # virtual device, you should ensure that the information is destroyed
    # following secure procedures.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    #
    # @option params [String] :path
    #   The path for the virtual MFA device. For more information about paths,
    #   see [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :virtual_mfa_device_name
    #   The name of the virtual MFA device. Use with path to uniquely identify
    #   a virtual MFA device.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::CreateVirtualMFADeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVirtualMFADeviceResponse#virtual_mfa_device #virtual_mfa_device} => Types::VirtualMFADevice
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_mfa_device({
    #     path: "pathType",
    #     virtual_mfa_device_name: "virtualMFADeviceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_mfa_device.serial_number #=> String
    #   resp.virtual_mfa_device.base_32_string_seed #=> String
    #   resp.virtual_mfa_device.qr_code_png #=> String
    #   resp.virtual_mfa_device.user.path #=> String
    #   resp.virtual_mfa_device.user.user_name #=> String
    #   resp.virtual_mfa_device.user.user_id #=> String
    #   resp.virtual_mfa_device.user.arn #=> String
    #   resp.virtual_mfa_device.user.create_date #=> Time
    #   resp.virtual_mfa_device.user.password_last_used #=> Time
    #   resp.virtual_mfa_device.enable_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateVirtualMFADevice AWS API Documentation
    #
    # @overload create_virtual_mfa_device(params = {})
    # @param [Hash] params ({})
    def create_virtual_mfa_device(params = {}, options = {})
      req = build_request(:create_virtual_mfa_device, params)
      req.send_request(options)
    end

    # Deactivates the specified MFA device and removes it from association
    # with the user name for which it was originally enabled.
    #
    # For more information about creating and working with virtual MFA
    # devices, go to [Using a Virtual MFA Device][1] in the *IAM User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html
    #
    # @option params [required, String] :user_name
    #   The name of the user whose MFA device you want to deactivate.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :serial_number
    #   The serial number that uniquely identifies the MFA device. For virtual
    #   MFA devices, the serial number is the device ARN.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =/:,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_mfa_device({
    #     user_name: "existingUserNameType", # required
    #     serial_number: "serialNumberType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeactivateMFADevice AWS API Documentation
    #
    # @overload deactivate_mfa_device(params = {})
    # @param [Hash] params ({})
    def deactivate_mfa_device(params = {}, options = {})
      req = build_request(:deactivate_mfa_device, params)
      req.send_request(options)
    end

    # Deletes the access key pair associated with the specified IAM user.
    #
    # If you do not specify a user name, IAM determines the user name
    # implicitly based on the AWS access key ID signing the request. Because
    # this action works for access keys under the AWS account, you can use
    # this action to manage root credentials even if the AWS account has no
    # associated users.
    #
    # @option params [String] :user_name
    #   The name of the user whose access key pair you want to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :access_key_id
    #   The access key ID for the access key ID and secret access key you want
    #   to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_key({
    #     user_name: "existingUserNameType",
    #     access_key_id: "accessKeyIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccessKey AWS API Documentation
    #
    # @overload delete_access_key(params = {})
    # @param [Hash] params ({})
    def delete_access_key(params = {}, options = {})
      req = build_request(:delete_access_key, params)
      req.send_request(options)
    end

    # Deletes the specified AWS account alias. For information about using
    # an AWS account alias, see [Using an Alias for Your AWS Account ID][1]
    # in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html
    #
    # @option params [required, String] :account_alias
    #   The name of the account alias to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of lowercase letters, digits, and dashes. You
    #   cannot start or finish with a dash, nor can you have two dashes in a
    #   row.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_alias({
    #     account_alias: "accountAliasType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccountAlias AWS API Documentation
    #
    # @overload delete_account_alias(params = {})
    # @param [Hash] params ({})
    def delete_account_alias(params = {}, options = {})
      req = build_request(:delete_account_alias, params)
      req.send_request(options)
    end

    # Deletes the password policy for the AWS account. There are no
    # parameters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccountPasswordPolicy AWS API Documentation
    #
    # @overload delete_account_password_policy(params = {})
    # @param [Hash] params ({})
    def delete_account_password_policy(params = {}, options = {})
      req = build_request(:delete_account_password_policy, params)
      req.send_request(options)
    end

    # Deletes the specified IAM group. The group must not contain any users
    # or have any attached policies.
    #
    # @option params [required, String] :group_name
    #   The name of the IAM group to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "groupNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes the specified inline policy that is embedded in the specified
    # IAM group.
    #
    # A group can also have managed policies attached to it. To detach a
    # managed policy from a group, use DetachGroupPolicy. For more
    # information about policies, refer to [Managed Policies and Inline
    # Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :group_name
    #   The name (friendly name, not ARN) identifying the group that the
    #   policy is embedded in.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_name
    #   The name identifying the policy document to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group_policy({
    #     group_name: "groupNameType", # required
    #     policy_name: "policyNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteGroupPolicy AWS API Documentation
    #
    # @overload delete_group_policy(params = {})
    # @param [Hash] params ({})
    def delete_group_policy(params = {}, options = {})
      req = build_request(:delete_group_policy, params)
      req.send_request(options)
    end

    # Deletes the specified instance profile. The instance profile must not
    # have an associated role.
    #
    # Make sure you do not have any Amazon EC2 instances running with the
    # instance profile you are about to delete. Deleting a role or instance
    # profile that is associated with a running instance will break any
    # applications running on the instance.
    #
    # For more information about instance profiles, go to [About Instance
    # Profiles][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html
    #
    # @option params [required, String] :instance_profile_name
    #   The name of the instance profile to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_profile({
    #     instance_profile_name: "instanceProfileNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteInstanceProfile AWS API Documentation
    #
    # @overload delete_instance_profile(params = {})
    # @param [Hash] params ({})
    def delete_instance_profile(params = {}, options = {})
      req = build_request(:delete_instance_profile, params)
      req.send_request(options)
    end

    # Deletes the password for the specified IAM user, which terminates the
    # user's ability to access AWS services through the AWS Management
    # Console.
    #
    # Deleting a user's password does not prevent a user from accessing AWS
    # through the command line interface or the API. To prevent all user
    # access you must also either make any access keys inactive or delete
    # them. For more information about making keys inactive or deleting
    # them, see UpdateAccessKey and DeleteAccessKey.
    #
    # @option params [required, String] :user_name
    #   The name of the user whose password you want to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_login_profile({
    #     user_name: "userNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteLoginProfile AWS API Documentation
    #
    # @overload delete_login_profile(params = {})
    # @param [Hash] params ({})
    def delete_login_profile(params = {}, options = {})
      req = build_request(:delete_login_profile, params)
      req.send_request(options)
    end

    # Deletes an OpenID Connect identity provider (IdP) resource object in
    # IAM.
    #
    # Deleting an IAM OIDC provider resource does not update any roles that
    # reference the provider as a principal in their trust policies. Any
    # attempt to assume a role that references a deleted provider fails.
    #
    # This action is idempotent; it does not fail or return an error if you
    # call the action for a provider that does not exist.
    #
    # @option params [required, String] :open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OpenID Connect provider
    #   resource object to delete. You can get a list of OpenID Connect
    #   provider resource ARNs by using the ListOpenIDConnectProviders action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_open_id_connect_provider({
    #     open_id_connect_provider_arn: "arnType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteOpenIDConnectProvider AWS API Documentation
    #
    # @overload delete_open_id_connect_provider(params = {})
    # @param [Hash] params ({})
    def delete_open_id_connect_provider(params = {}, options = {})
      req = build_request(:delete_open_id_connect_provider, params)
      req.send_request(options)
    end

    # Deletes the specified managed policy.
    #
    # Before you can delete a managed policy, you must first detach the
    # policy from all users, groups, and roles that it is attached to, and
    # you must delete all of the policy's versions. The following steps
    # describe the process for deleting a managed policy:
    #
    # * Detach the policy from all users, groups, and roles that the policy
    #   is attached to, using the DetachUserPolicy, DetachGroupPolicy, or
    #   DetachRolePolicy APIs. To list all the users, groups, and roles that
    #   a policy is attached to, use ListEntitiesForPolicy.
    #
    # * Delete all versions of the policy using DeletePolicyVersion. To list
    #   the policy's versions, use ListPolicyVersions. You cannot use
    #   DeletePolicyVersion to delete the version that is marked as the
    #   default version. You delete the policy's default version in the
    #   next step of the process.
    #
    # * Delete the policy (this automatically deletes the policy's default
    #   version) using this API.
    #
    # For information about managed policies, see [Managed Policies and
    # Inline Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to delete.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_arn: "arnType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes the specified version from the specified managed policy.
    #
    # You cannot delete the default version from a policy using this API. To
    # delete the default version from a policy, use DeletePolicy. To find
    # out which version of a policy is marked as the default version, use
    # ListPolicyVersions.
    #
    # For information about versions for managed policies, see [Versioning
    # for Managed Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy from which you want
    #   to delete a version.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :version_id
    #   The policy version to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that consists of the lowercase letter 'v' followed by one
    #   or two digits, and optionally followed by a period '.' and a string
    #   of letters and digits.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for Managed Policies][2] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_version({
    #     policy_arn: "arnType", # required
    #     version_id: "policyVersionIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeletePolicyVersion AWS API Documentation
    #
    # @overload delete_policy_version(params = {})
    # @param [Hash] params ({})
    def delete_policy_version(params = {}, options = {})
      req = build_request(:delete_policy_version, params)
      req.send_request(options)
    end

    # Deletes the specified role. The role must not have any policies
    # attached. For more information about roles, go to [Working with
    # Roles][1].
    #
    # Make sure you do not have any Amazon EC2 instances running with the
    # role you are about to delete. Deleting a role or instance profile that
    # is associated with a running instance will break any applications
    # running on the instance.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html
    #
    # @option params [required, String] :role_name
    #   The name of the role to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role({
    #     role_name: "roleNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRole AWS API Documentation
    #
    # @overload delete_role(params = {})
    # @param [Hash] params ({})
    def delete_role(params = {}, options = {})
      req = build_request(:delete_role, params)
      req.send_request(options)
    end

    # Deletes the specified inline policy that is embedded in the specified
    # IAM role.
    #
    # A role can also have managed policies attached to it. To detach a
    # managed policy from a role, use DetachRolePolicy. For more information
    # about policies, refer to [Managed Policies and Inline Policies][1] in
    # the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :role_name
    #   The name (friendly name, not ARN) identifying the role that the policy
    #   is embedded in.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_name
    #   The name of the inline policy to delete from the specified IAM role.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role_policy({
    #     role_name: "roleNameType", # required
    #     policy_name: "policyNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRolePolicy AWS API Documentation
    #
    # @overload delete_role_policy(params = {})
    # @param [Hash] params ({})
    def delete_role_policy(params = {}, options = {})
      req = build_request(:delete_role_policy, params)
      req.send_request(options)
    end

    # Deletes a SAML provider resource in IAM.
    #
    # Deleting the provider resource from IAM does not update any roles that
    # reference the SAML provider resource's ARN as a principal in their
    # trust policies. Any attempt to assume a role that references a
    # non-existent provider resource ARN fails.
    #
    # <note markdown="1"> This operation requires [Signature Version 4][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_saml_provider({
    #     saml_provider_arn: "arnType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSAMLProvider AWS API Documentation
    #
    # @overload delete_saml_provider(params = {})
    # @param [Hash] params ({})
    def delete_saml_provider(params = {}, options = {})
      req = build_request(:delete_saml_provider, params)
      req.send_request(options)
    end

    # Deletes the specified SSH public key.
    #
    # The SSH public key deleted by this action is used only for
    # authenticating the associated IAM user to an AWS CodeCommit
    # repository. For more information about using SSH keys to authenticate
    # to an AWS CodeCommit repository, see [Set up AWS CodeCommit for SSH
    # Connections][1] in the *AWS CodeCommit User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
    #
    # @option params [required, String] :user_name
    #   The name of the IAM user associated with the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ssh_public_key({
    #     user_name: "userNameType", # required
    #     ssh_public_key_id: "publicKeyIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSSHPublicKey AWS API Documentation
    #
    # @overload delete_ssh_public_key(params = {})
    # @param [Hash] params ({})
    def delete_ssh_public_key(params = {}, options = {})
      req = build_request(:delete_ssh_public_key, params)
      req.send_request(options)
    end

    # Deletes the specified server certificate.
    #
    # For more information about working with server certificates, including
    # a list of AWS services that can use the server certificates that you
    # manage with IAM, go to [Working with Server Certificates][1] in the
    # *IAM User Guide*.
    #
    # If you are using a server certificate with Elastic Load Balancing,
    # deleting the certificate could have implications for your application.
    # If Elastic Load Balancing doesn't detect the deletion of bound
    # certificates, it may continue to use the certificates. This could
    # cause Elastic Load Balancing to stop accepting traffic. We recommend
    # that you remove the reference to the certificate from Elastic Load
    # Balancing before using this command to delete the certificate. For
    # more information, go to [DeleteLoadBalancerListeners][2] in the
    # *Elastic Load Balancing API Reference*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
    # [2]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html
    #
    # @option params [required, String] :server_certificate_name
    #   The name of the server certificate you want to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_server_certificate({
    #     server_certificate_name: "serverCertificateNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServerCertificate AWS API Documentation
    #
    # @overload delete_server_certificate(params = {})
    # @param [Hash] params ({})
    def delete_server_certificate(params = {}, options = {})
      req = build_request(:delete_server_certificate, params)
      req.send_request(options)
    end

    # Deletes the specified service-specific credential.
    #
    # @option params [String] :user_name
    #   The name of the IAM user associated with the service-specific
    #   credential. If this value is not specified, then the operation assumes
    #   the user whose credentials are used to call the operation.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :service_specific_credential_id
    #   The unique identifier of the service-specific credential. You can get
    #   this value by calling ListServiceSpecificCredentials.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_specific_credential({
    #     user_name: "userNameType",
    #     service_specific_credential_id: "serviceSpecificCredentialId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServiceSpecificCredential AWS API Documentation
    #
    # @overload delete_service_specific_credential(params = {})
    # @param [Hash] params ({})
    def delete_service_specific_credential(params = {}, options = {})
      req = build_request(:delete_service_specific_credential, params)
      req.send_request(options)
    end

    # Deletes a signing certificate associated with the specified IAM user.
    #
    # If you do not specify a user name, IAM determines the user name
    # implicitly based on the AWS access key ID signing the request. Because
    # this action works for access keys under the AWS account, you can use
    # this action to manage root credentials even if the AWS account has no
    # associated IAM users.
    #
    # @option params [String] :user_name
    #   The name of the user the signing certificate belongs to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :certificate_id
    #   The ID of the signing certificate to delete.
    #
    #   The format of this parameter, as described by its [regex][1] pattern,
    #   is a string of characters that can be upper- or lower-cased letters or
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_signing_certificate({
    #     user_name: "existingUserNameType",
    #     certificate_id: "certificateIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSigningCertificate AWS API Documentation
    #
    # @overload delete_signing_certificate(params = {})
    # @param [Hash] params ({})
    def delete_signing_certificate(params = {}, options = {})
      req = build_request(:delete_signing_certificate, params)
      req.send_request(options)
    end

    # Deletes the specified IAM user. The user must not belong to any groups
    # or have any access keys, signing certificates, or attached policies.
    #
    # @option params [required, String] :user_name
    #   The name of the user to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     user_name: "existingUserNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes the specified inline policy that is embedded in the specified
    # IAM user.
    #
    # A user can also have managed policies attached to it. To detach a
    # managed policy from a user, use DetachUserPolicy. For more information
    # about policies, refer to [Managed Policies and Inline Policies][1] in
    # the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :user_name
    #   The name (friendly name, not ARN) identifying the user that the policy
    #   is embedded in.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_name
    #   The name identifying the policy document to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_policy({
    #     user_name: "existingUserNameType", # required
    #     policy_name: "policyNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUserPolicy AWS API Documentation
    #
    # @overload delete_user_policy(params = {})
    # @param [Hash] params ({})
    def delete_user_policy(params = {}, options = {})
      req = build_request(:delete_user_policy, params)
      req.send_request(options)
    end

    # Deletes a virtual MFA device.
    #
    # <note markdown="1"> You must deactivate a user's virtual MFA device before you can delete
    # it. For information about deactivating MFA devices, see
    # DeactivateMFADevice.
    #
    #  </note>
    #
    # @option params [required, String] :serial_number
    #   The serial number that uniquely identifies the MFA device. For virtual
    #   MFA devices, the serial number is the same as the ARN.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =/:,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_mfa_device({
    #     serial_number: "serialNumberType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteVirtualMFADevice AWS API Documentation
    #
    # @overload delete_virtual_mfa_device(params = {})
    # @param [Hash] params ({})
    def delete_virtual_mfa_device(params = {}, options = {})
      req = build_request(:delete_virtual_mfa_device, params)
      req.send_request(options)
    end

    # Removes the specified managed policy from the specified IAM group.
    #
    # A group can also have inline policies embedded with it. To delete an
    # inline policy, use the DeleteGroupPolicy API. For information about
    # policies, see [Managed Policies and Inline Policies][1] in the *IAM
    # User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :group_name
    #   The name (friendly name, not ARN) of the IAM group to detach the
    #   policy from.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_group_policy({
    #     group_name: "groupNameType", # required
    #     policy_arn: "arnType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachGroupPolicy AWS API Documentation
    #
    # @overload detach_group_policy(params = {})
    # @param [Hash] params ({})
    def detach_group_policy(params = {}, options = {})
      req = build_request(:detach_group_policy, params)
      req.send_request(options)
    end

    # Removes the specified managed policy from the specified role.
    #
    # A role can also have inline policies embedded with it. To delete an
    # inline policy, use the DeleteRolePolicy API. For information about
    # policies, see [Managed Policies and Inline Policies][1] in the *IAM
    # User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :role_name
    #   The name (friendly name, not ARN) of the IAM role to detach the policy
    #   from.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_role_policy({
    #     role_name: "roleNameType", # required
    #     policy_arn: "arnType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachRolePolicy AWS API Documentation
    #
    # @overload detach_role_policy(params = {})
    # @param [Hash] params ({})
    def detach_role_policy(params = {}, options = {})
      req = build_request(:detach_role_policy, params)
      req.send_request(options)
    end

    # Removes the specified managed policy from the specified user.
    #
    # A user can also have inline policies embedded with it. To delete an
    # inline policy, use the DeleteUserPolicy API. For information about
    # policies, see [Managed Policies and Inline Policies][1] in the *IAM
    # User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :user_name
    #   The name (friendly name, not ARN) of the IAM user to detach the policy
    #   from.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_user_policy({
    #     user_name: "userNameType", # required
    #     policy_arn: "arnType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachUserPolicy AWS API Documentation
    #
    # @overload detach_user_policy(params = {})
    # @param [Hash] params ({})
    def detach_user_policy(params = {}, options = {})
      req = build_request(:detach_user_policy, params)
      req.send_request(options)
    end

    # Enables the specified MFA device and associates it with the specified
    # IAM user. When enabled, the MFA device is required for every
    # subsequent login by the IAM user associated with the device.
    #
    # @option params [required, String] :user_name
    #   The name of the IAM user for whom you want to enable the MFA device.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :serial_number
    #   The serial number that uniquely identifies the MFA device. For virtual
    #   MFA devices, the serial number is the device ARN.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =/:,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :authentication_code_1
    #   An authentication code emitted by the device.
    #
    #   The format for this parameter is a string of 6 digits.
    #
    # @option params [required, String] :authentication_code_2
    #   A subsequent authentication code emitted by the device.
    #
    #   The format for this parameter is a string of 6 digits.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_mfa_device({
    #     user_name: "existingUserNameType", # required
    #     serial_number: "serialNumberType", # required
    #     authentication_code_1: "authenticationCodeType", # required
    #     authentication_code_2: "authenticationCodeType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EnableMFADevice AWS API Documentation
    #
    # @overload enable_mfa_device(params = {})
    # @param [Hash] params ({})
    def enable_mfa_device(params = {}, options = {})
      req = build_request(:enable_mfa_device, params)
      req.send_request(options)
    end

    # Generates a credential report for the AWS account. For more
    # information about the credential report, see [Getting Credential
    # Reports][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
    #
    # @return [Types::GenerateCredentialReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateCredentialReportResponse#state #state} => String
    #   * {Types::GenerateCredentialReportResponse#description #description} => String
    #
    # @example Response structure
    #
    #   resp.state #=> String, one of "STARTED", "INPROGRESS", "COMPLETE"
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GenerateCredentialReport AWS API Documentation
    #
    # @overload generate_credential_report(params = {})
    # @param [Hash] params ({})
    def generate_credential_report(params = {}, options = {})
      req = build_request(:generate_credential_report, params)
      req.send_request(options)
    end

    # Retrieves information about when the specified access key was last
    # used. The information includes the date and time of last use, along
    # with the AWS service and region that were specified in the last
    # request made with that key.
    #
    # @option params [required, String] :access_key_id
    #   The identifier of an access key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetAccessKeyLastUsedResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessKeyLastUsedResponse#user_name #user_name} => String
    #   * {Types::GetAccessKeyLastUsedResponse#access_key_last_used #access_key_last_used} => Types::AccessKeyLastUsed
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_key_last_used({
    #     access_key_id: "accessKeyIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_name #=> String
    #   resp.access_key_last_used.last_used_date #=> Time
    #   resp.access_key_last_used.service_name #=> String
    #   resp.access_key_last_used.region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccessKeyLastUsed AWS API Documentation
    #
    # @overload get_access_key_last_used(params = {})
    # @param [Hash] params ({})
    def get_access_key_last_used(params = {}, options = {})
      req = build_request(:get_access_key_last_used, params)
      req.send_request(options)
    end

    # Retrieves information about all IAM users, groups, roles, and policies
    # in your AWS account, including their relationships to one another. Use
    # this API to obtain a snapshot of the configuration of IAM permissions
    # (users, groups, roles, and policies) in your account.
    #
    # You can optionally filter the results using the `Filter` parameter.
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    # @option params [Array<String>] :filter
    #   A list of entity types used to filter the results. Only the entities
    #   that match the types you specify are included in the output. Use the
    #   value `LocalManagedPolicy` to include customer managed policies.
    #
    #   The format for this parameter is a comma-separated (if more than one)
    #   list of strings. Each string value in the list must be one of the
    #   valid values listed below.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @return [Types::GetAccountAuthorizationDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountAuthorizationDetailsResponse#user_detail_list #user_detail_list} => Array&lt;Types::UserDetail&gt;
    #   * {Types::GetAccountAuthorizationDetailsResponse#group_detail_list #group_detail_list} => Array&lt;Types::GroupDetail&gt;
    #   * {Types::GetAccountAuthorizationDetailsResponse#role_detail_list #role_detail_list} => Array&lt;Types::RoleDetail&gt;
    #   * {Types::GetAccountAuthorizationDetailsResponse#policies #policies} => Array&lt;Types::ManagedPolicyDetail&gt;
    #   * {Types::GetAccountAuthorizationDetailsResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::GetAccountAuthorizationDetailsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_authorization_details({
    #     filter: ["User"], # accepts User, Role, Group, LocalManagedPolicy, AWSManagedPolicy
    #     max_items: 1,
    #     marker: "markerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_detail_list #=> Array
    #   resp.user_detail_list[0].path #=> String
    #   resp.user_detail_list[0].user_name #=> String
    #   resp.user_detail_list[0].user_id #=> String
    #   resp.user_detail_list[0].arn #=> String
    #   resp.user_detail_list[0].create_date #=> Time
    #   resp.user_detail_list[0].user_policy_list #=> Array
    #   resp.user_detail_list[0].user_policy_list[0].policy_name #=> String
    #   resp.user_detail_list[0].user_policy_list[0].policy_document #=> String
    #   resp.user_detail_list[0].group_list #=> Array
    #   resp.user_detail_list[0].group_list[0] #=> String
    #   resp.user_detail_list[0].attached_managed_policies #=> Array
    #   resp.user_detail_list[0].attached_managed_policies[0].policy_name #=> String
    #   resp.user_detail_list[0].attached_managed_policies[0].policy_arn #=> String
    #   resp.group_detail_list #=> Array
    #   resp.group_detail_list[0].path #=> String
    #   resp.group_detail_list[0].group_name #=> String
    #   resp.group_detail_list[0].group_id #=> String
    #   resp.group_detail_list[0].arn #=> String
    #   resp.group_detail_list[0].create_date #=> Time
    #   resp.group_detail_list[0].group_policy_list #=> Array
    #   resp.group_detail_list[0].group_policy_list[0].policy_name #=> String
    #   resp.group_detail_list[0].group_policy_list[0].policy_document #=> String
    #   resp.group_detail_list[0].attached_managed_policies #=> Array
    #   resp.group_detail_list[0].attached_managed_policies[0].policy_name #=> String
    #   resp.group_detail_list[0].attached_managed_policies[0].policy_arn #=> String
    #   resp.role_detail_list #=> Array
    #   resp.role_detail_list[0].path #=> String
    #   resp.role_detail_list[0].role_name #=> String
    #   resp.role_detail_list[0].role_id #=> String
    #   resp.role_detail_list[0].arn #=> String
    #   resp.role_detail_list[0].create_date #=> Time
    #   resp.role_detail_list[0].assume_role_policy_document #=> String
    #   resp.role_detail_list[0].instance_profile_list #=> Array
    #   resp.role_detail_list[0].instance_profile_list[0].path #=> String
    #   resp.role_detail_list[0].instance_profile_list[0].instance_profile_name #=> String
    #   resp.role_detail_list[0].instance_profile_list[0].instance_profile_id #=> String
    #   resp.role_detail_list[0].instance_profile_list[0].arn #=> String
    #   resp.role_detail_list[0].instance_profile_list[0].create_date #=> Time
    #   resp.role_detail_list[0].instance_profile_list[0].roles #=> Array
    #   resp.role_detail_list[0].instance_profile_list[0].roles[0].path #=> String
    #   resp.role_detail_list[0].instance_profile_list[0].roles[0].role_name #=> String
    #   resp.role_detail_list[0].instance_profile_list[0].roles[0].role_id #=> String
    #   resp.role_detail_list[0].instance_profile_list[0].roles[0].arn #=> String
    #   resp.role_detail_list[0].instance_profile_list[0].roles[0].create_date #=> Time
    #   resp.role_detail_list[0].instance_profile_list[0].roles[0].assume_role_policy_document #=> String
    #   resp.role_detail_list[0].role_policy_list #=> Array
    #   resp.role_detail_list[0].role_policy_list[0].policy_name #=> String
    #   resp.role_detail_list[0].role_policy_list[0].policy_document #=> String
    #   resp.role_detail_list[0].attached_managed_policies #=> Array
    #   resp.role_detail_list[0].attached_managed_policies[0].policy_name #=> String
    #   resp.role_detail_list[0].attached_managed_policies[0].policy_arn #=> String
    #   resp.policies #=> Array
    #   resp.policies[0].policy_name #=> String
    #   resp.policies[0].policy_id #=> String
    #   resp.policies[0].arn #=> String
    #   resp.policies[0].path #=> String
    #   resp.policies[0].default_version_id #=> String
    #   resp.policies[0].attachment_count #=> Integer
    #   resp.policies[0].is_attachable #=> Boolean
    #   resp.policies[0].description #=> String
    #   resp.policies[0].create_date #=> Time
    #   resp.policies[0].update_date #=> Time
    #   resp.policies[0].policy_version_list #=> Array
    #   resp.policies[0].policy_version_list[0].document #=> String
    #   resp.policies[0].policy_version_list[0].version_id #=> String
    #   resp.policies[0].policy_version_list[0].is_default_version #=> Boolean
    #   resp.policies[0].policy_version_list[0].create_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountAuthorizationDetails AWS API Documentation
    #
    # @overload get_account_authorization_details(params = {})
    # @param [Hash] params ({})
    def get_account_authorization_details(params = {}, options = {})
      req = build_request(:get_account_authorization_details, params)
      req.send_request(options)
    end

    # Retrieves the password policy for the AWS account. For more
    # information about using a password policy, go to [Managing an IAM
    # Password Policy][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html
    #
    # @return [Types::GetAccountPasswordPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountPasswordPolicyResponse#password_policy #password_policy} => Types::PasswordPolicy
    #
    # @example Response structure
    #
    #   resp.password_policy.minimum_password_length #=> Integer
    #   resp.password_policy.require_symbols #=> Boolean
    #   resp.password_policy.require_numbers #=> Boolean
    #   resp.password_policy.require_uppercase_characters #=> Boolean
    #   resp.password_policy.require_lowercase_characters #=> Boolean
    #   resp.password_policy.allow_users_to_change_password #=> Boolean
    #   resp.password_policy.expire_passwords #=> Boolean
    #   resp.password_policy.max_password_age #=> Integer
    #   resp.password_policy.password_reuse_prevention #=> Integer
    #   resp.password_policy.hard_expiry #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountPasswordPolicy AWS API Documentation
    #
    # @overload get_account_password_policy(params = {})
    # @param [Hash] params ({})
    def get_account_password_policy(params = {}, options = {})
      req = build_request(:get_account_password_policy, params)
      req.send_request(options)
    end

    # Retrieves information about IAM entity usage and IAM quotas in the AWS
    # account.
    #
    # For information about limitations on IAM entities, see [Limitations on
    # IAM Entities][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    #
    # @return [Types::GetAccountSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSummaryResponse#summary_map #summary_map} => Hash&lt;String,Integer&gt;
    #
    # @example Response structure
    #
    #   resp.summary_map #=> Hash
    #   resp.summary_map["summaryKeyType"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountSummary AWS API Documentation
    #
    # @overload get_account_summary(params = {})
    # @param [Hash] params ({})
    def get_account_summary(params = {}, options = {})
      req = build_request(:get_account_summary, params)
      req.send_request(options)
    end

    # Gets a list of all of the context keys referenced in the input
    # policies. The policies are supplied as a list of one or more strings.
    # To get the context keys from policies associated with an IAM user,
    # group, or role, use GetContextKeysForPrincipalPolicy.
    #
    # Context keys are variables maintained by AWS and its services that
    # provide details about the context of an API query request, and can be
    # evaluated by testing against a value specified in an IAM policy. Use
    # GetContextKeysForCustomPolicy to understand what key names and values
    # you must supply when you call SimulateCustomPolicy. Note that all
    # parameters are shown in unencoded form here for clarity, but must be
    # URL encoded to be included as a part of a real HTML request.
    #
    # @option params [required, Array<String>] :policy_input_list
    #   A list of policies for which you want the list of context keys
    #   referenced in those policies. Each document is specified as a string
    #   containing the complete, valid JSON text of an IAM policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetContextKeysForPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContextKeysForPolicyResponse#context_key_names #context_key_names} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_context_keys_for_custom_policy({
    #     policy_input_list: ["policyDocumentType"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.context_key_names #=> Array
    #   resp.context_key_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForCustomPolicy AWS API Documentation
    #
    # @overload get_context_keys_for_custom_policy(params = {})
    # @param [Hash] params ({})
    def get_context_keys_for_custom_policy(params = {}, options = {})
      req = build_request(:get_context_keys_for_custom_policy, params)
      req.send_request(options)
    end

    # Gets a list of all of the context keys referenced in all of the IAM
    # policies attached to the specified IAM entity. The entity can be an
    # IAM user, group, or role. If you specify a user, then the request also
    # includes all of the policies attached to groups that the user is a
    # member of.
    #
    # You can optionally include a list of one or more additional policies,
    # specified as strings. If you want to include *only* a list of policies
    # by string, use GetContextKeysForCustomPolicy instead.
    #
    # **Note:** This API discloses information about the permissions granted
    # to other users. If you do not want users to see other user's
    # permissions, then consider allowing them to use
    # GetContextKeysForCustomPolicy instead.
    #
    # Context keys are variables maintained by AWS and its services that
    # provide details about the context of an API query request, and can be
    # evaluated by testing against a value in an IAM policy. Use
    # GetContextKeysForPrincipalPolicy to understand what key names and
    # values you must supply when you call SimulatePrincipalPolicy.
    #
    # @option params [required, String] :policy_source_arn
    #   The ARN of a user, group, or role whose policies contain the context
    #   keys that you want listed. If you specify a user, the list includes
    #   context keys that are found in all policies attached to the user as
    #   well as to all groups that the user is a member of. If you pick a
    #   group or a role, then it includes only those context keys that are
    #   found in policies attached to that entity. Note that all parameters
    #   are shown in unencoded form here for clarity, but must be URL encoded
    #   to be included as a part of a real HTML request.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :policy_input_list
    #   An optional list of additional policies for which you want the list of
    #   context keys that are referenced.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetContextKeysForPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContextKeysForPolicyResponse#context_key_names #context_key_names} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_context_keys_for_principal_policy({
    #     policy_source_arn: "arnType", # required
    #     policy_input_list: ["policyDocumentType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.context_key_names #=> Array
    #   resp.context_key_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForPrincipalPolicy AWS API Documentation
    #
    # @overload get_context_keys_for_principal_policy(params = {})
    # @param [Hash] params ({})
    def get_context_keys_for_principal_policy(params = {}, options = {})
      req = build_request(:get_context_keys_for_principal_policy, params)
      req.send_request(options)
    end

    # Retrieves a credential report for the AWS account. For more
    # information about the credential report, see [Getting Credential
    # Reports][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
    #
    # @return [Types::GetCredentialReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCredentialReportResponse#content #content} => String
    #   * {Types::GetCredentialReportResponse#report_format #report_format} => String
    #   * {Types::GetCredentialReportResponse#generated_time #generated_time} => Time
    #
    # @example Response structure
    #
    #   resp.content #=> String
    #   resp.report_format #=> String, one of "text/csv"
    #   resp.generated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetCredentialReport AWS API Documentation
    #
    # @overload get_credential_report(params = {})
    # @param [Hash] params ({})
    def get_credential_report(params = {}, options = {})
      req = build_request(:get_credential_report, params)
      req.send_request(options)
    end

    # Returns a list of IAM users that are in the specified IAM group. You
    # can paginate the results using the `MaxItems` and `Marker` parameters.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::GetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupResponse#group #group} => Types::Group
    #   * {Types::GetGroupResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::GetGroupResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::GetGroupResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_name: "groupNameType", # required
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group.path #=> String
    #   resp.group.group_name #=> String
    #   resp.group.group_id #=> String
    #   resp.group.arn #=> String
    #   resp.group.create_date #=> Time
    #   resp.users #=> Array
    #   resp.users[0].path #=> String
    #   resp.users[0].user_name #=> String
    #   resp.users[0].user_id #=> String
    #   resp.users[0].arn #=> String
    #   resp.users[0].create_date #=> Time
    #   resp.users[0].password_last_used #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Retrieves the specified inline policy document that is embedded in the
    # specified IAM group.
    #
    # <note markdown="1"> Policies returned by this API are URL-encoded compliant with [RFC
    # 3986][1]. You can use a URL decoding method to convert the policy back
    # to plain JSON text. For example, if you use Java, you can use the
    # `decode` method of the `java.net.URLDecoder` utility class in the Java
    # SDK. Other languages and SDKs provide similar functionality.
    #
    #  </note>
    #
    # An IAM group can also have managed policies attached to it. To
    # retrieve a managed policy document that is attached to a group, use
    # GetPolicy to determine the policy's default version, then use
    # GetPolicyVersion to retrieve the policy document.
    #
    # For more information about policies, see [Managed Policies and Inline
    # Policies][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://tools.ietf.org/html/rfc3986
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :group_name
    #   The name of the group the policy is associated with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_name
    #   The name of the policy document to get.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetGroupPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupPolicyResponse#group_name #group_name} => String
    #   * {Types::GetGroupPolicyResponse#policy_name #policy_name} => String
    #   * {Types::GetGroupPolicyResponse#policy_document #policy_document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_policy({
    #     group_name: "groupNameType", # required
    #     policy_name: "policyNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_name #=> String
    #   resp.policy_name #=> String
    #   resp.policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupPolicy AWS API Documentation
    #
    # @overload get_group_policy(params = {})
    # @param [Hash] params ({})
    def get_group_policy(params = {}, options = {})
      req = build_request(:get_group_policy, params)
      req.send_request(options)
    end

    # Retrieves information about the specified instance profile, including
    # the instance profile's path, GUID, ARN, and role. For more
    # information about instance profiles, see [About Instance Profiles][1]
    # in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html
    #
    # @option params [required, String] :instance_profile_name
    #   The name of the instance profile to get information about.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetInstanceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceProfileResponse#instance_profile #instance_profile} => Types::InstanceProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_profile({
    #     instance_profile_name: "instanceProfileNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_profile.path #=> String
    #   resp.instance_profile.instance_profile_name #=> String
    #   resp.instance_profile.instance_profile_id #=> String
    #   resp.instance_profile.arn #=> String
    #   resp.instance_profile.create_date #=> Time
    #   resp.instance_profile.roles #=> Array
    #   resp.instance_profile.roles[0].path #=> String
    #   resp.instance_profile.roles[0].role_name #=> String
    #   resp.instance_profile.roles[0].role_id #=> String
    #   resp.instance_profile.roles[0].arn #=> String
    #   resp.instance_profile.roles[0].create_date #=> Time
    #   resp.instance_profile.roles[0].assume_role_policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetInstanceProfile AWS API Documentation
    #
    # @overload get_instance_profile(params = {})
    # @param [Hash] params ({})
    def get_instance_profile(params = {}, options = {})
      req = build_request(:get_instance_profile, params)
      req.send_request(options)
    end

    # Retrieves the user name and password-creation date for the specified
    # IAM user. If the user has not been assigned a password, the action
    # returns a 404 (`NoSuchEntity`) error.
    #
    # @option params [required, String] :user_name
    #   The name of the user whose login profile you want to retrieve.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetLoginProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoginProfileResponse#login_profile #login_profile} => Types::LoginProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_login_profile({
    #     user_name: "userNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.login_profile.user_name #=> String
    #   resp.login_profile.create_date #=> Time
    #   resp.login_profile.password_reset_required #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetLoginProfile AWS API Documentation
    #
    # @overload get_login_profile(params = {})
    # @param [Hash] params ({})
    def get_login_profile(params = {}, options = {})
      req = build_request(:get_login_profile, params)
      req.send_request(options)
    end

    # Returns information about the specified OpenID Connect (OIDC) provider
    # resource object in IAM.
    #
    # @option params [required, String] :open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the OIDC provider resource object in
    #   IAM to get information for. You can get a list of OIDC provider
    #   resource ARNs by using the ListOpenIDConnectProviders action.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::GetOpenIDConnectProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOpenIDConnectProviderResponse#url #url} => String
    #   * {Types::GetOpenIDConnectProviderResponse#client_id_list #client_id_list} => Array&lt;String&gt;
    #   * {Types::GetOpenIDConnectProviderResponse#thumbprint_list #thumbprint_list} => Array&lt;String&gt;
    #   * {Types::GetOpenIDConnectProviderResponse#create_date #create_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_open_id_connect_provider({
    #     open_id_connect_provider_arn: "arnType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #   resp.client_id_list #=> Array
    #   resp.client_id_list[0] #=> String
    #   resp.thumbprint_list #=> Array
    #   resp.thumbprint_list[0] #=> String
    #   resp.create_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetOpenIDConnectProvider AWS API Documentation
    #
    # @overload get_open_id_connect_provider(params = {})
    # @param [Hash] params ({})
    def get_open_id_connect_provider(params = {}, options = {})
      req = build_request(:get_open_id_connect_provider, params)
      req.send_request(options)
    end

    # Retrieves information about the specified managed policy, including
    # the policy's default version and the total number of IAM users,
    # groups, and roles to which the policy is attached. To retrieve the
    # list of the specific users, groups, and roles that the policy is
    # attached to, use the ListEntitiesForPolicy API. This API returns
    # metadata about the policy. To retrieve the actual policy document for
    # a specific version of the policy, use GetPolicyVersion.
    #
    # This API retrieves information about managed policies. To retrieve
    # information about an inline policy that is embedded with an IAM user,
    # group, or role, use the GetUserPolicy, GetGroupPolicy, or
    # GetRolePolicy API.
    #
    # For more information about policies, see [Managed Policies and Inline
    # Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the managed policy that you want
    #   information about.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy #policy} => Types::Policy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     policy_arn: "arnType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_name #=> String
    #   resp.policy.policy_id #=> String
    #   resp.policy.arn #=> String
    #   resp.policy.path #=> String
    #   resp.policy.default_version_id #=> String
    #   resp.policy.attachment_count #=> Integer
    #   resp.policy.is_attachable #=> Boolean
    #   resp.policy.description #=> String
    #   resp.policy.create_date #=> Time
    #   resp.policy.update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Retrieves information about the specified version of the specified
    # managed policy, including the policy document.
    #
    # <note markdown="1"> Policies returned by this API are URL-encoded compliant with [RFC
    # 3986][1]. You can use a URL decoding method to convert the policy back
    # to plain JSON text. For example, if you use Java, you can use the
    # `decode` method of the `java.net.URLDecoder` utility class in the Java
    # SDK. Other languages and SDKs provide similar functionality.
    #
    #  </note>
    #
    # To list the available versions for a policy, use ListPolicyVersions.
    #
    # This API retrieves information about managed policies. To retrieve
    # information about an inline policy that is embedded in a user, group,
    # or role, use the GetUserPolicy, GetGroupPolicy, or GetRolePolicy API.
    #
    # For more information about the types of policies, see [Managed
    # Policies and Inline Policies][2] in the *IAM User Guide*.
    #
    # For more information about managed policy versions, see [Versioning
    # for Managed Policies][3] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://tools.ietf.org/html/rfc3986
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    # [3]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the managed policy that you want
    #   information about.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :version_id
    #   Identifies the policy version to retrieve.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that consists of the lowercase letter 'v' followed by one
    #   or two digits, and optionally followed by a period '.' and a string
    #   of letters and digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetPolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyVersionResponse#policy_version #policy_version} => Types::PolicyVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_version({
    #     policy_arn: "arnType", # required
    #     version_id: "policyVersionIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_version.document #=> String
    #   resp.policy_version.version_id #=> String
    #   resp.policy_version.is_default_version #=> Boolean
    #   resp.policy_version.create_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyVersion AWS API Documentation
    #
    # @overload get_policy_version(params = {})
    # @param [Hash] params ({})
    def get_policy_version(params = {}, options = {})
      req = build_request(:get_policy_version, params)
      req.send_request(options)
    end

    # Retrieves information about the specified role, including the role's
    # path, GUID, ARN, and the role's trust policy that grants permission
    # to assume the role. For more information about roles, see [Working
    # with Roles][1].
    #
    # <note markdown="1"> Policies returned by this API are URL-encoded compliant with [RFC
    # 3986][2]. You can use a URL decoding method to convert the policy back
    # to plain JSON text. For example, if you use Java, you can use the
    # `decode` method of the `java.net.URLDecoder` utility class in the Java
    # SDK. Other languages and SDKs provide similar functionality.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html
    # [2]: https://tools.ietf.org/html/rfc3986
    #
    # @option params [required, String] :role_name
    #   The name of the IAM role to get information about.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetRoleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoleResponse#role #role} => Types::Role
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_role({
    #     role_name: "roleNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.role.path #=> String
    #   resp.role.role_name #=> String
    #   resp.role.role_id #=> String
    #   resp.role.arn #=> String
    #   resp.role.create_date #=> Time
    #   resp.role.assume_role_policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRole AWS API Documentation
    #
    # @overload get_role(params = {})
    # @param [Hash] params ({})
    def get_role(params = {}, options = {})
      req = build_request(:get_role, params)
      req.send_request(options)
    end

    # Retrieves the specified inline policy document that is embedded with
    # the specified IAM role.
    #
    # <note markdown="1"> Policies returned by this API are URL-encoded compliant with [RFC
    # 3986][1]. You can use a URL decoding method to convert the policy back
    # to plain JSON text. For example, if you use Java, you can use the
    # `decode` method of the `java.net.URLDecoder` utility class in the Java
    # SDK. Other languages and SDKs provide similar functionality.
    #
    #  </note>
    #
    # An IAM role can also have managed policies attached to it. To retrieve
    # a managed policy document that is attached to a role, use GetPolicy to
    # determine the policy's default version, then use GetPolicyVersion to
    # retrieve the policy document.
    #
    # For more information about policies, see [Managed Policies and Inline
    # Policies][2] in the *IAM User Guide*.
    #
    # For more information about roles, see [Using Roles to Delegate
    # Permissions and Federate Identities][3].
    #
    #
    #
    # [1]: https://tools.ietf.org/html/rfc3986
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    # [3]: http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html
    #
    # @option params [required, String] :role_name
    #   The name of the role associated with the policy.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_name
    #   The name of the policy document to get.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetRolePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRolePolicyResponse#role_name #role_name} => String
    #   * {Types::GetRolePolicyResponse#policy_name #policy_name} => String
    #   * {Types::GetRolePolicyResponse#policy_document #policy_document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_role_policy({
    #     role_name: "roleNameType", # required
    #     policy_name: "policyNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.role_name #=> String
    #   resp.policy_name #=> String
    #   resp.policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRolePolicy AWS API Documentation
    #
    # @overload get_role_policy(params = {})
    # @param [Hash] params ({})
    def get_role_policy(params = {}, options = {})
      req = build_request(:get_role_policy, params)
      req.send_request(options)
    end

    # Returns the SAML provider metadocument that was uploaded when the IAM
    # SAML provider resource object was created or updated.
    #
    # <note markdown="1"> This operation requires [Signature Version 4][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider resource object in
    #   IAM to get information about.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::GetSAMLProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSAMLProviderResponse#saml_metadata_document #saml_metadata_document} => String
    #   * {Types::GetSAMLProviderResponse#create_date #create_date} => Time
    #   * {Types::GetSAMLProviderResponse#valid_until #valid_until} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_saml_provider({
    #     saml_provider_arn: "arnType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.saml_metadata_document #=> String
    #   resp.create_date #=> Time
    #   resp.valid_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSAMLProvider AWS API Documentation
    #
    # @overload get_saml_provider(params = {})
    # @param [Hash] params ({})
    def get_saml_provider(params = {}, options = {})
      req = build_request(:get_saml_provider, params)
      req.send_request(options)
    end

    # Retrieves the specified SSH public key, including metadata about the
    # key.
    #
    # The SSH public key retrieved by this action is used only for
    # authenticating the associated IAM user to an AWS CodeCommit
    # repository. For more information about using SSH keys to authenticate
    # to an AWS CodeCommit repository, see [Set up AWS CodeCommit for SSH
    # Connections][1] in the *AWS CodeCommit User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
    #
    # @option params [required, String] :user_name
    #   The name of the IAM user associated with the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :encoding
    #   Specifies the public key encoding format to use in the response. To
    #   retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the
    #   public key in PEM format, use `PEM`.
    #
    # @return [Types::GetSSHPublicKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSSHPublicKeyResponse#ssh_public_key #ssh_public_key} => Types::SSHPublicKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ssh_public_key({
    #     user_name: "userNameType", # required
    #     ssh_public_key_id: "publicKeyIdType", # required
    #     encoding: "SSH", # required, accepts SSH, PEM
    #   })
    #
    # @example Response structure
    #
    #   resp.ssh_public_key.user_name #=> String
    #   resp.ssh_public_key.ssh_public_key_id #=> String
    #   resp.ssh_public_key.fingerprint #=> String
    #   resp.ssh_public_key.ssh_public_key_body #=> String
    #   resp.ssh_public_key.status #=> String, one of "Active", "Inactive"
    #   resp.ssh_public_key.upload_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSSHPublicKey AWS API Documentation
    #
    # @overload get_ssh_public_key(params = {})
    # @param [Hash] params ({})
    def get_ssh_public_key(params = {}, options = {})
      req = build_request(:get_ssh_public_key, params)
      req.send_request(options)
    end

    # Retrieves information about the specified server certificate stored in
    # IAM.
    #
    # For more information about working with server certificates, including
    # a list of AWS services that can use the server certificates that you
    # manage with IAM, go to [Working with Server Certificates][1] in the
    # *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
    #
    # @option params [required, String] :server_certificate_name
    #   The name of the server certificate you want to retrieve information
    #   about.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetServerCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServerCertificateResponse#server_certificate #server_certificate} => Types::ServerCertificate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_server_certificate({
    #     server_certificate_name: "serverCertificateNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_certificate.server_certificate_metadata.path #=> String
    #   resp.server_certificate.server_certificate_metadata.server_certificate_name #=> String
    #   resp.server_certificate.server_certificate_metadata.server_certificate_id #=> String
    #   resp.server_certificate.server_certificate_metadata.arn #=> String
    #   resp.server_certificate.server_certificate_metadata.upload_date #=> Time
    #   resp.server_certificate.server_certificate_metadata.expiration #=> Time
    #   resp.server_certificate.certificate_body #=> String
    #   resp.server_certificate.certificate_chain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServerCertificate AWS API Documentation
    #
    # @overload get_server_certificate(params = {})
    # @param [Hash] params ({})
    def get_server_certificate(params = {}, options = {})
      req = build_request(:get_server_certificate, params)
      req.send_request(options)
    end

    # Retrieves information about the specified IAM user, including the
    # user's creation date, path, unique ID, and ARN.
    #
    # If you do not specify a user name, IAM determines the user name
    # implicitly based on the AWS access key ID used to sign the request to
    # this API.
    #
    # @option params [String] :user_name
    #   The name of the user to get information about.
    #
    #   This parameter is optional. If it is not included, it defaults to the
    #   user making the request. This parameter allows (per its [regex
    #   pattern][1]) a string of characters consisting of upper and lowercase
    #   alphanumeric characters with no spaces. You can also include any of
    #   the following characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     user_name: "existingUserNameType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user.path #=> String
    #   resp.user.user_name #=> String
    #   resp.user.user_id #=> String
    #   resp.user.arn #=> String
    #   resp.user.create_date #=> Time
    #   resp.user.password_last_used #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # Retrieves the specified inline policy document that is embedded in the
    # specified IAM user.
    #
    # <note markdown="1"> Policies returned by this API are URL-encoded compliant with [RFC
    # 3986][1]. You can use a URL decoding method to convert the policy back
    # to plain JSON text. For example, if you use Java, you can use the
    # `decode` method of the `java.net.URLDecoder` utility class in the Java
    # SDK. Other languages and SDKs provide similar functionality.
    #
    #  </note>
    #
    # An IAM user can also have managed policies attached to it. To retrieve
    # a managed policy document that is attached to a user, use GetPolicy to
    # determine the policy's default version, then use GetPolicyVersion to
    # retrieve the policy document.
    #
    # For more information about policies, see [Managed Policies and Inline
    # Policies][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://tools.ietf.org/html/rfc3986
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :user_name
    #   The name of the user who the policy is associated with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_name
    #   The name of the policy document to get.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::GetUserPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserPolicyResponse#user_name #user_name} => String
    #   * {Types::GetUserPolicyResponse#policy_name #policy_name} => String
    #   * {Types::GetUserPolicyResponse#policy_document #policy_document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_policy({
    #     user_name: "existingUserNameType", # required
    #     policy_name: "policyNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_name #=> String
    #   resp.policy_name #=> String
    #   resp.policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserPolicy AWS API Documentation
    #
    # @overload get_user_policy(params = {})
    # @param [Hash] params ({})
    def get_user_policy(params = {}, options = {})
      req = build_request(:get_user_policy, params)
      req.send_request(options)
    end

    # Returns information about the access key IDs associated with the
    # specified IAM user. If there are none, the action returns an empty
    # list.
    #
    # Although each user is limited to a small number of keys, you can still
    # paginate the results using the `MaxItems` and `Marker` parameters.
    #
    # If the `UserName` field is not specified, the UserName is determined
    # implicitly based on the AWS access key ID used to sign the request.
    # Because this action works for access keys under the AWS account, you
    # can use this action to manage root credentials even if the AWS account
    # has no associated users.
    #
    # <note markdown="1"> To ensure the security of your AWS account, the secret access key is
    # accessible only during key and user creation.
    #
    #  </note>
    #
    # @option params [String] :user_name
    #   The name of the user.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListAccessKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessKeysResponse#access_key_metadata #access_key_metadata} => Array&lt;Types::AccessKeyMetadata&gt;
    #   * {Types::ListAccessKeysResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListAccessKeysResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_keys({
    #     user_name: "existingUserNameType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.access_key_metadata #=> Array
    #   resp.access_key_metadata[0].user_name #=> String
    #   resp.access_key_metadata[0].access_key_id #=> String
    #   resp.access_key_metadata[0].status #=> String, one of "Active", "Inactive"
    #   resp.access_key_metadata[0].create_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccessKeys AWS API Documentation
    #
    # @overload list_access_keys(params = {})
    # @param [Hash] params ({})
    def list_access_keys(params = {}, options = {})
      req = build_request(:list_access_keys, params)
      req.send_request(options)
    end

    # Lists the account alias associated with the AWS account (Note: you can
    # have only one). For information about using an AWS account alias, see
    # [Using an Alias for Your AWS Account ID][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListAccountAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAliasesResponse#account_aliases #account_aliases} => Array&lt;String&gt;
    #   * {Types::ListAccountAliasesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListAccountAliasesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_aliases({
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_aliases #=> Array
    #   resp.account_aliases[0] #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccountAliases AWS API Documentation
    #
    # @overload list_account_aliases(params = {})
    # @param [Hash] params ({})
    def list_account_aliases(params = {}, options = {})
      req = build_request(:list_account_aliases, params)
      req.send_request(options)
    end

    # Lists all managed policies that are attached to the specified IAM
    # group.
    #
    # An IAM group can also have inline policies embedded with it. To list
    # the inline policies for a group, use the ListGroupPolicies API. For
    # information about policies, see [Managed Policies and Inline
    # Policies][1] in the *IAM User Guide*.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters. You can use the `PathPrefix` parameter to limit the list
    # of policies to only those matching the specified path prefix. If there
    # are no policies attached to the specified group (or none that match
    # the specified path prefix), the action returns an empty list.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :group_name
    #   The name (friendly name, not ARN) of the group to list attached
    #   policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. This parameter is optional.
    #   If it is not included, it defaults to a slash (/), listing all
    #   policies.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListAttachedGroupPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttachedGroupPoliciesResponse#attached_policies #attached_policies} => Array&lt;Types::AttachedPolicy&gt;
    #   * {Types::ListAttachedGroupPoliciesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListAttachedGroupPoliciesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_group_policies({
    #     group_name: "groupNameType", # required
    #     path_prefix: "policyPathType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attached_policies #=> Array
    #   resp.attached_policies[0].policy_name #=> String
    #   resp.attached_policies[0].policy_arn #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedGroupPolicies AWS API Documentation
    #
    # @overload list_attached_group_policies(params = {})
    # @param [Hash] params ({})
    def list_attached_group_policies(params = {}, options = {})
      req = build_request(:list_attached_group_policies, params)
      req.send_request(options)
    end

    # Lists all managed policies that are attached to the specified IAM
    # role.
    #
    # An IAM role can also have inline policies embedded with it. To list
    # the inline policies for a role, use the ListRolePolicies API. For
    # information about policies, see [Managed Policies and Inline
    # Policies][1] in the *IAM User Guide*.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters. You can use the `PathPrefix` parameter to limit the list
    # of policies to only those matching the specified path prefix. If there
    # are no policies attached to the specified role (or none that match the
    # specified path prefix), the action returns an empty list.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :role_name
    #   The name (friendly name, not ARN) of the role to list attached
    #   policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. This parameter is optional.
    #   If it is not included, it defaults to a slash (/), listing all
    #   policies.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListAttachedRolePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttachedRolePoliciesResponse#attached_policies #attached_policies} => Array&lt;Types::AttachedPolicy&gt;
    #   * {Types::ListAttachedRolePoliciesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListAttachedRolePoliciesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_role_policies({
    #     role_name: "roleNameType", # required
    #     path_prefix: "policyPathType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attached_policies #=> Array
    #   resp.attached_policies[0].policy_name #=> String
    #   resp.attached_policies[0].policy_arn #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedRolePolicies AWS API Documentation
    #
    # @overload list_attached_role_policies(params = {})
    # @param [Hash] params ({})
    def list_attached_role_policies(params = {}, options = {})
      req = build_request(:list_attached_role_policies, params)
      req.send_request(options)
    end

    # Lists all managed policies that are attached to the specified IAM
    # user.
    #
    # An IAM user can also have inline policies embedded with it. To list
    # the inline policies for a user, use the ListUserPolicies API. For
    # information about policies, see [Managed Policies and Inline
    # Policies][1] in the *IAM User Guide*.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters. You can use the `PathPrefix` parameter to limit the list
    # of policies to only those matching the specified path prefix. If there
    # are no policies attached to the specified group (or none that match
    # the specified path prefix), the action returns an empty list.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :user_name
    #   The name (friendly name, not ARN) of the user to list attached
    #   policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. This parameter is optional.
    #   If it is not included, it defaults to a slash (/), listing all
    #   policies.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListAttachedUserPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttachedUserPoliciesResponse#attached_policies #attached_policies} => Array&lt;Types::AttachedPolicy&gt;
    #   * {Types::ListAttachedUserPoliciesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListAttachedUserPoliciesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_user_policies({
    #     user_name: "userNameType", # required
    #     path_prefix: "policyPathType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attached_policies #=> Array
    #   resp.attached_policies[0].policy_name #=> String
    #   resp.attached_policies[0].policy_arn #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedUserPolicies AWS API Documentation
    #
    # @overload list_attached_user_policies(params = {})
    # @param [Hash] params ({})
    def list_attached_user_policies(params = {}, options = {})
      req = build_request(:list_attached_user_policies, params)
      req.send_request(options)
    end

    # Lists all IAM users, groups, and roles that the specified managed
    # policy is attached to.
    #
    # You can use the optional `EntityFilter` parameter to limit the results
    # to a particular type of entity (users, groups, or roles). For example,
    # to list only the roles that are attached to the specified policy, set
    # `EntityFilter` to `Role`.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy for which you want
    #   the versions.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :entity_filter
    #   The entity type to use for filtering the results.
    #
    #   For example, when `EntityFilter` is `Role`, only the roles that are
    #   attached to the specified policy are returned. This parameter is
    #   optional. If it is not included, all attached entities (users, groups,
    #   and roles) are returned. The argument for this parameter must be one
    #   of the valid values listed below.
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. This parameter is optional.
    #   If it is not included, it defaults to a slash (/), listing all
    #   entities.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListEntitiesForPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitiesForPolicyResponse#policy_groups #policy_groups} => Array&lt;Types::PolicyGroup&gt;
    #   * {Types::ListEntitiesForPolicyResponse#policy_users #policy_users} => Array&lt;Types::PolicyUser&gt;
    #   * {Types::ListEntitiesForPolicyResponse#policy_roles #policy_roles} => Array&lt;Types::PolicyRole&gt;
    #   * {Types::ListEntitiesForPolicyResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListEntitiesForPolicyResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities_for_policy({
    #     policy_arn: "arnType", # required
    #     entity_filter: "User", # accepts User, Role, Group, LocalManagedPolicy, AWSManagedPolicy
    #     path_prefix: "pathType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_groups #=> Array
    #   resp.policy_groups[0].group_name #=> String
    #   resp.policy_groups[0].group_id #=> String
    #   resp.policy_users #=> Array
    #   resp.policy_users[0].user_name #=> String
    #   resp.policy_users[0].user_id #=> String
    #   resp.policy_roles #=> Array
    #   resp.policy_roles[0].role_name #=> String
    #   resp.policy_roles[0].role_id #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListEntitiesForPolicy AWS API Documentation
    #
    # @overload list_entities_for_policy(params = {})
    # @param [Hash] params ({})
    def list_entities_for_policy(params = {}, options = {})
      req = build_request(:list_entities_for_policy, params)
      req.send_request(options)
    end

    # Lists the names of the inline policies that are embedded in the
    # specified IAM group.
    #
    # An IAM group can also have managed policies attached to it. To list
    # the managed policies that are attached to a group, use
    # ListAttachedGroupPolicies. For more information about policies, see
    # [Managed Policies and Inline Policies][1] in the *IAM User Guide*.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters. If there are no inline policies embedded with the
    # specified group, the action returns an empty list.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :group_name
    #   The name of the group to list policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListGroupPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupPoliciesResponse#policy_names #policy_names} => Array&lt;String&gt;
    #   * {Types::ListGroupPoliciesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListGroupPoliciesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_policies({
    #     group_name: "groupNameType", # required
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_names #=> Array
    #   resp.policy_names[0] #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupPolicies AWS API Documentation
    #
    # @overload list_group_policies(params = {})
    # @param [Hash] params ({})
    def list_group_policies(params = {}, options = {})
      req = build_request(:list_group_policies, params)
      req.send_request(options)
    end

    # Lists the IAM groups that have the specified path prefix.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. For example, the prefix
    #   `/division_abc/subdivision_xyz/` gets all groups whose path starts
    #   with `/division_abc/subdivision_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all groups. This paramater allows (per its [regex
    #   pattern][1]) a string of characters consisting of either a forward
    #   slash (/) by itself or a string that must begin and end with forward
    #   slashes, containing any ASCII character from the ! (\\u0021) thru the
    #   DEL character (\\u007F), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#groups #groups} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListGroupsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].path #=> String
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].group_id #=> String
    #   resp.groups[0].arn #=> String
    #   resp.groups[0].create_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists the IAM groups that the specified IAM user belongs to.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    # @option params [required, String] :user_name
    #   The name of the user to list groups for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListGroupsForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsForUserResponse#groups #groups} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsForUserResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListGroupsForUserResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups_for_user({
    #     user_name: "existingUserNameType", # required
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].path #=> String
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].group_id #=> String
    #   resp.groups[0].arn #=> String
    #   resp.groups[0].create_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsForUser AWS API Documentation
    #
    # @overload list_groups_for_user(params = {})
    # @param [Hash] params ({})
    def list_groups_for_user(params = {}, options = {})
      req = build_request(:list_groups_for_user, params)
      req.send_request(options)
    end

    # Lists the instance profiles that have the specified path prefix. If
    # there are none, the action returns an empty list. For more information
    # about instance profiles, go to [About Instance Profiles][1].
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. For example, the prefix
    #   `/application_abc/component_xyz/` gets all instance profiles whose
    #   path starts with `/application_abc/component_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all instance profiles. This paramater allows (per
    #   its [regex pattern][1]) a string of characters consisting of either a
    #   forward slash (/) by itself or a string that must begin and end with
    #   forward slashes, containing any ASCII character from the ! (\\u0021)
    #   thru the DEL character (\\u007F), including most punctuation
    #   characters, digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListInstanceProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceProfilesResponse#instance_profiles #instance_profiles} => Array&lt;Types::InstanceProfile&gt;
    #   * {Types::ListInstanceProfilesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListInstanceProfilesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_profiles({
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_profiles #=> Array
    #   resp.instance_profiles[0].path #=> String
    #   resp.instance_profiles[0].instance_profile_name #=> String
    #   resp.instance_profiles[0].instance_profile_id #=> String
    #   resp.instance_profiles[0].arn #=> String
    #   resp.instance_profiles[0].create_date #=> Time
    #   resp.instance_profiles[0].roles #=> Array
    #   resp.instance_profiles[0].roles[0].path #=> String
    #   resp.instance_profiles[0].roles[0].role_name #=> String
    #   resp.instance_profiles[0].roles[0].role_id #=> String
    #   resp.instance_profiles[0].roles[0].arn #=> String
    #   resp.instance_profiles[0].roles[0].create_date #=> Time
    #   resp.instance_profiles[0].roles[0].assume_role_policy_document #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfiles AWS API Documentation
    #
    # @overload list_instance_profiles(params = {})
    # @param [Hash] params ({})
    def list_instance_profiles(params = {}, options = {})
      req = build_request(:list_instance_profiles, params)
      req.send_request(options)
    end

    # Lists the instance profiles that have the specified associated IAM
    # role. If there are none, the action returns an empty list. For more
    # information about instance profiles, go to [About Instance
    # Profiles][1].
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html
    #
    # @option params [required, String] :role_name
    #   The name of the role to list instance profiles for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListInstanceProfilesForRoleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceProfilesForRoleResponse#instance_profiles #instance_profiles} => Array&lt;Types::InstanceProfile&gt;
    #   * {Types::ListInstanceProfilesForRoleResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListInstanceProfilesForRoleResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_profiles_for_role({
    #     role_name: "roleNameType", # required
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_profiles #=> Array
    #   resp.instance_profiles[0].path #=> String
    #   resp.instance_profiles[0].instance_profile_name #=> String
    #   resp.instance_profiles[0].instance_profile_id #=> String
    #   resp.instance_profiles[0].arn #=> String
    #   resp.instance_profiles[0].create_date #=> Time
    #   resp.instance_profiles[0].roles #=> Array
    #   resp.instance_profiles[0].roles[0].path #=> String
    #   resp.instance_profiles[0].roles[0].role_name #=> String
    #   resp.instance_profiles[0].roles[0].role_id #=> String
    #   resp.instance_profiles[0].roles[0].arn #=> String
    #   resp.instance_profiles[0].roles[0].create_date #=> Time
    #   resp.instance_profiles[0].roles[0].assume_role_policy_document #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesForRole AWS API Documentation
    #
    # @overload list_instance_profiles_for_role(params = {})
    # @param [Hash] params ({})
    def list_instance_profiles_for_role(params = {}, options = {})
      req = build_request(:list_instance_profiles_for_role, params)
      req.send_request(options)
    end

    # Lists the MFA devices for an IAM user. If the request includes a IAM
    # user name, then this action lists all the MFA devices associated with
    # the specified user. If you do not specify a user name, IAM determines
    # the user name implicitly based on the AWS access key ID signing the
    # request for this API.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    # @option params [String] :user_name
    #   The name of the user whose MFA devices you want to list.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListMFADevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMFADevicesResponse#mfa_devices #mfa_devices} => Array&lt;Types::MFADevice&gt;
    #   * {Types::ListMFADevicesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListMFADevicesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mfa_devices({
    #     user_name: "existingUserNameType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.mfa_devices #=> Array
    #   resp.mfa_devices[0].user_name #=> String
    #   resp.mfa_devices[0].serial_number #=> String
    #   resp.mfa_devices[0].enable_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListMFADevices AWS API Documentation
    #
    # @overload list_mfa_devices(params = {})
    # @param [Hash] params ({})
    def list_mfa_devices(params = {}, options = {})
      req = build_request(:list_mfa_devices, params)
      req.send_request(options)
    end

    # Lists information about the IAM OpenID Connect (OIDC) provider
    # resource objects defined in the AWS account.
    #
    # @return [Types::ListOpenIDConnectProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOpenIDConnectProvidersResponse#open_id_connect_provider_list #open_id_connect_provider_list} => Array&lt;Types::OpenIDConnectProviderListEntry&gt;
    #
    # @example Response structure
    #
    #   resp.open_id_connect_provider_list #=> Array
    #   resp.open_id_connect_provider_list[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOpenIDConnectProviders AWS API Documentation
    #
    # @overload list_open_id_connect_providers(params = {})
    # @param [Hash] params ({})
    def list_open_id_connect_providers(params = {}, options = {})
      req = build_request(:list_open_id_connect_providers, params)
      req.send_request(options)
    end

    # Lists all the managed policies that are available in your AWS account,
    # including your own customer-defined managed policies and all AWS
    # managed policies.
    #
    # You can filter the list of policies that is returned using the
    # optional `OnlyAttached`, `Scope`, and `PathPrefix` parameters. For
    # example, to list only the customer managed policies in your AWS
    # account, set `Scope` to `Local`. To list only AWS managed policies,
    # set `Scope` to `AWS`.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    # For more information about managed policies, see [Managed Policies and
    # Inline Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [String] :scope
    #   The scope to use for filtering the results.
    #
    #   To list only AWS managed policies, set `Scope` to `AWS`. To list only
    #   the customer managed policies in your AWS account, set `Scope` to
    #   `Local`.
    #
    #   This parameter is optional. If it is not included, or if it is set to
    #   `All`, all policies are returned.
    #
    # @option params [Boolean] :only_attached
    #   A flag to filter the results to only the attached policies.
    #
    #   When `OnlyAttached` is `true`, the returned list contains only the
    #   policies that are attached to an IAM user, group, or role. When
    #   `OnlyAttached` is `false`, or when the parameter is not included, all
    #   policies are returned.
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. This parameter is optional.
    #   If it is not included, it defaults to a slash (/), listing all
    #   policies. This paramater allows (per its [regex pattern][1]) a string
    #   of characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesResponse#policies #policies} => Array&lt;Types::Policy&gt;
    #   * {Types::ListPoliciesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListPoliciesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     scope: "All", # accepts All, AWS, Local
    #     only_attached: false,
    #     path_prefix: "policyPathType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_name #=> String
    #   resp.policies[0].policy_id #=> String
    #   resp.policies[0].arn #=> String
    #   resp.policies[0].path #=> String
    #   resp.policies[0].default_version_id #=> String
    #   resp.policies[0].attachment_count #=> Integer
    #   resp.policies[0].is_attachable #=> Boolean
    #   resp.policies[0].description #=> String
    #   resp.policies[0].create_date #=> Time
    #   resp.policies[0].update_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicies AWS API Documentation
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Lists information about the versions of the specified managed policy,
    # including the version that is currently set as the policy's default
    # version.
    #
    # For more information about managed policies, see [Managed Policies and
    # Inline Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy for which you want
    #   the versions.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListPolicyVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyVersionsResponse#versions #versions} => Array&lt;Types::PolicyVersion&gt;
    #   * {Types::ListPolicyVersionsResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListPolicyVersionsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_versions({
    #     policy_arn: "arnType", # required
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.versions #=> Array
    #   resp.versions[0].document #=> String
    #   resp.versions[0].version_id #=> String
    #   resp.versions[0].is_default_version #=> Boolean
    #   resp.versions[0].create_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicyVersions AWS API Documentation
    #
    # @overload list_policy_versions(params = {})
    # @param [Hash] params ({})
    def list_policy_versions(params = {}, options = {})
      req = build_request(:list_policy_versions, params)
      req.send_request(options)
    end

    # Lists the names of the inline policies that are embedded in the
    # specified IAM role.
    #
    # An IAM role can also have managed policies attached to it. To list the
    # managed policies that are attached to a role, use
    # ListAttachedRolePolicies. For more information about policies, see
    # [Managed Policies and Inline Policies][1] in the *IAM User Guide*.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters. If there are no inline policies embedded with the
    # specified role, the action returns an empty list.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :role_name
    #   The name of the role to list policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListRolePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRolePoliciesResponse#policy_names #policy_names} => Array&lt;String&gt;
    #   * {Types::ListRolePoliciesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListRolePoliciesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_role_policies({
    #     role_name: "roleNameType", # required
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_names #=> Array
    #   resp.policy_names[0] #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolePolicies AWS API Documentation
    #
    # @overload list_role_policies(params = {})
    # @param [Hash] params ({})
    def list_role_policies(params = {}, options = {})
      req = build_request(:list_role_policies, params)
      req.send_request(options)
    end

    # Lists the IAM roles that have the specified path prefix. If there are
    # none, the action returns an empty list. For more information about
    # roles, go to [Working with Roles][1].
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. For example, the prefix
    #   `/application_abc/component_xyz/` gets all roles whose path starts
    #   with `/application_abc/component_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all roles. This paramater allows (per its [regex
    #   pattern][1]) a string of characters consisting of either a forward
    #   slash (/) by itself or a string that must begin and end with forward
    #   slashes, containing any ASCII character from the ! (\\u0021) thru the
    #   DEL character (\\u007F), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListRolesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRolesResponse#roles #roles} => Array&lt;Types::Role&gt;
    #   * {Types::ListRolesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListRolesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_roles({
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.roles #=> Array
    #   resp.roles[0].path #=> String
    #   resp.roles[0].role_name #=> String
    #   resp.roles[0].role_id #=> String
    #   resp.roles[0].arn #=> String
    #   resp.roles[0].create_date #=> Time
    #   resp.roles[0].assume_role_policy_document #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRoles AWS API Documentation
    #
    # @overload list_roles(params = {})
    # @param [Hash] params ({})
    def list_roles(params = {}, options = {})
      req = build_request(:list_roles, params)
      req.send_request(options)
    end

    # Lists the SAML provider resource objects defined in IAM in the
    # account.
    #
    # <note markdown="1"> This operation requires [Signature Version 4][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @return [Types::ListSAMLProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSAMLProvidersResponse#saml_provider_list #saml_provider_list} => Array&lt;Types::SAMLProviderListEntry&gt;
    #
    # @example Response structure
    #
    #   resp.saml_provider_list #=> Array
    #   resp.saml_provider_list[0].arn #=> String
    #   resp.saml_provider_list[0].valid_until #=> Time
    #   resp.saml_provider_list[0].create_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSAMLProviders AWS API Documentation
    #
    # @overload list_saml_providers(params = {})
    # @param [Hash] params ({})
    def list_saml_providers(params = {}, options = {})
      req = build_request(:list_saml_providers, params)
      req.send_request(options)
    end

    # Returns information about the SSH public keys associated with the
    # specified IAM user. If there are none, the action returns an empty
    # list.
    #
    # The SSH public keys returned by this action are used only for
    # authenticating the IAM user to an AWS CodeCommit repository. For more
    # information about using SSH keys to authenticate to an AWS CodeCommit
    # repository, see [Set up AWS CodeCommit for SSH Connections][1] in the
    # *AWS CodeCommit User Guide*.
    #
    # Although each user is limited to a small number of keys, you can still
    # paginate the results using the `MaxItems` and `Marker` parameters.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
    #
    # @option params [String] :user_name
    #   The name of the IAM user to list SSH public keys for. If none is
    #   specified, the UserName field is determined implicitly based on the
    #   AWS access key used to sign the request.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListSSHPublicKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSSHPublicKeysResponse#ssh_public_keys #ssh_public_keys} => Array&lt;Types::SSHPublicKeyMetadata&gt;
    #   * {Types::ListSSHPublicKeysResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListSSHPublicKeysResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ssh_public_keys({
    #     user_name: "userNameType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ssh_public_keys #=> Array
    #   resp.ssh_public_keys[0].user_name #=> String
    #   resp.ssh_public_keys[0].ssh_public_key_id #=> String
    #   resp.ssh_public_keys[0].status #=> String, one of "Active", "Inactive"
    #   resp.ssh_public_keys[0].upload_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSSHPublicKeys AWS API Documentation
    #
    # @overload list_ssh_public_keys(params = {})
    # @param [Hash] params ({})
    def list_ssh_public_keys(params = {}, options = {})
      req = build_request(:list_ssh_public_keys, params)
      req.send_request(options)
    end

    # Lists the server certificates stored in IAM that have the specified
    # path prefix. If none exist, the action returns an empty list.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    # For more information about working with server certificates, including
    # a list of AWS services that can use the server certificates that you
    # manage with IAM, go to [Working with Server Certificates][1] in the
    # *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. For example:
    #   `/company/servercerts` would get all server certificates for which the
    #   path starts with `/company/servercerts`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all server certificates. This paramater allows (per
    #   its [regex pattern][1]) a string of characters consisting of either a
    #   forward slash (/) by itself or a string that must begin and end with
    #   forward slashes, containing any ASCII character from the ! (\\u0021)
    #   thru the DEL character (\\u007F), including most punctuation
    #   characters, digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListServerCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServerCertificatesResponse#server_certificate_metadata_list #server_certificate_metadata_list} => Array&lt;Types::ServerCertificateMetadata&gt;
    #   * {Types::ListServerCertificatesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListServerCertificatesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_server_certificates({
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.server_certificate_metadata_list #=> Array
    #   resp.server_certificate_metadata_list[0].path #=> String
    #   resp.server_certificate_metadata_list[0].server_certificate_name #=> String
    #   resp.server_certificate_metadata_list[0].server_certificate_id #=> String
    #   resp.server_certificate_metadata_list[0].arn #=> String
    #   resp.server_certificate_metadata_list[0].upload_date #=> Time
    #   resp.server_certificate_metadata_list[0].expiration #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServerCertificates AWS API Documentation
    #
    # @overload list_server_certificates(params = {})
    # @param [Hash] params ({})
    def list_server_certificates(params = {}, options = {})
      req = build_request(:list_server_certificates, params)
      req.send_request(options)
    end

    # Returns information about the service-specific credentials associated
    # with the specified IAM user. If there are none, the action returns an
    # empty list. The service-specific credentials returned by this action
    # are used only for authenticating the IAM user to a specific service.
    # For more information about using service-specific credentials to
    # authenticate to an AWS service, see [Set Up service-specific
    # credentials][1] in the AWS CodeCommit User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html
    #
    # @option params [String] :user_name
    #   The name of the user whose service-specific credentials you want
    #   information about. If this value is not specified then the operation
    #   assumes the user whose credentials are used to call the operation.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :service_name
    #   Filters the returned results to only those for the specified AWS
    #   service. If not specified, then AWS returns service-specific
    #   credentials for all services.
    #
    # @return [Types::ListServiceSpecificCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceSpecificCredentialsResponse#service_specific_credentials #service_specific_credentials} => Array&lt;Types::ServiceSpecificCredentialMetadata&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_specific_credentials({
    #     user_name: "userNameType",
    #     service_name: "serviceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_specific_credentials #=> Array
    #   resp.service_specific_credentials[0].user_name #=> String
    #   resp.service_specific_credentials[0].status #=> String, one of "Active", "Inactive"
    #   resp.service_specific_credentials[0].service_user_name #=> String
    #   resp.service_specific_credentials[0].create_date #=> Time
    #   resp.service_specific_credentials[0].service_specific_credential_id #=> String
    #   resp.service_specific_credentials[0].service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServiceSpecificCredentials AWS API Documentation
    #
    # @overload list_service_specific_credentials(params = {})
    # @param [Hash] params ({})
    def list_service_specific_credentials(params = {}, options = {})
      req = build_request(:list_service_specific_credentials, params)
      req.send_request(options)
    end

    # Returns information about the signing certificates associated with the
    # specified IAM user. If there are none, the action returns an empty
    # list.
    #
    # Although each user is limited to a small number of signing
    # certificates, you can still paginate the results using the `MaxItems`
    # and `Marker` parameters.
    #
    # If the `UserName` field is not specified, the user name is determined
    # implicitly based on the AWS access key ID used to sign the request for
    # this API. Because this action works for access keys under the AWS
    # account, you can use this action to manage root credentials even if
    # the AWS account has no associated users.
    #
    # @option params [String] :user_name
    #   The name of the IAM user whose signing certificates you want to
    #   examine.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListSigningCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSigningCertificatesResponse#certificates #certificates} => Array&lt;Types::SigningCertificate&gt;
    #   * {Types::ListSigningCertificatesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListSigningCertificatesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_certificates({
    #     user_name: "existingUserNameType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].user_name #=> String
    #   resp.certificates[0].certificate_id #=> String
    #   resp.certificates[0].certificate_body #=> String
    #   resp.certificates[0].status #=> String, one of "Active", "Inactive"
    #   resp.certificates[0].upload_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSigningCertificates AWS API Documentation
    #
    # @overload list_signing_certificates(params = {})
    # @param [Hash] params ({})
    def list_signing_certificates(params = {}, options = {})
      req = build_request(:list_signing_certificates, params)
      req.send_request(options)
    end

    # Lists the names of the inline policies embedded in the specified IAM
    # user.
    #
    # An IAM user can also have managed policies attached to it. To list the
    # managed policies that are attached to a user, use
    # ListAttachedUserPolicies. For more information about policies, see
    # [Managed Policies and Inline Policies][1] in the *IAM User Guide*.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters. If there are no inline policies embedded with the
    # specified user, the action returns an empty list.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :user_name
    #   The name of the user to list policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListUserPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserPoliciesResponse#policy_names #policy_names} => Array&lt;String&gt;
    #   * {Types::ListUserPoliciesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListUserPoliciesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_policies({
    #     user_name: "existingUserNameType", # required
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_names #=> Array
    #   resp.policy_names[0] #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUserPolicies AWS API Documentation
    #
    # @overload list_user_policies(params = {})
    # @param [Hash] params ({})
    def list_user_policies(params = {}, options = {})
      req = build_request(:list_user_policies, params)
      req.send_request(options)
    end

    # Lists the IAM users that have the specified path prefix. If no path
    # prefix is specified, the action returns all users in the AWS account.
    # If there are none, the action returns an empty list.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    # @option params [String] :path_prefix
    #   The path prefix for filtering the results. For example:
    #   `/division_abc/subdivision_xyz/`, which would get all user names whose
    #   path starts with `/division_abc/subdivision_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all user names. This paramater allows (per its
    #   [regex pattern][1]) a string of characters consisting of either a
    #   forward slash (/) by itself or a string that must begin and end with
    #   forward slashes, containing any ASCII character from the ! (\\u0021)
    #   thru the DEL character (\\u007F), including most punctuation
    #   characters, digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListUsersResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].path #=> String
    #   resp.users[0].user_name #=> String
    #   resp.users[0].user_id #=> String
    #   resp.users[0].arn #=> String
    #   resp.users[0].create_date #=> Time
    #   resp.users[0].password_last_used #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Lists the virtual MFA devices defined in the AWS account by assignment
    # status. If you do not specify an assignment status, the action returns
    # a list of all virtual MFA devices. Assignment status can be
    # `Assigned`, `Unassigned`, or `Any`.
    #
    # You can paginate the results using the `MaxItems` and `Marker`
    # parameters.
    #
    # @option params [String] :assignment_status
    #   The status (`Unassigned` or `Assigned`) of the devices to list. If you
    #   do not specify an `AssignmentStatus`, the action defaults to `Any`
    #   which lists both assigned and unassigned virtual MFA devices.
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @return [Types::ListVirtualMFADevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVirtualMFADevicesResponse#virtual_mfa_devices #virtual_mfa_devices} => Array&lt;Types::VirtualMFADevice&gt;
    #   * {Types::ListVirtualMFADevicesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListVirtualMFADevicesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_mfa_devices({
    #     assignment_status: "Assigned", # accepts Assigned, Unassigned, Any
    #     marker: "markerType",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_mfa_devices #=> Array
    #   resp.virtual_mfa_devices[0].serial_number #=> String
    #   resp.virtual_mfa_devices[0].base_32_string_seed #=> String
    #   resp.virtual_mfa_devices[0].qr_code_png #=> String
    #   resp.virtual_mfa_devices[0].user.path #=> String
    #   resp.virtual_mfa_devices[0].user.user_name #=> String
    #   resp.virtual_mfa_devices[0].user.user_id #=> String
    #   resp.virtual_mfa_devices[0].user.arn #=> String
    #   resp.virtual_mfa_devices[0].user.create_date #=> Time
    #   resp.virtual_mfa_devices[0].user.password_last_used #=> Time
    #   resp.virtual_mfa_devices[0].enable_date #=> Time
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListVirtualMFADevices AWS API Documentation
    #
    # @overload list_virtual_mfa_devices(params = {})
    # @param [Hash] params ({})
    def list_virtual_mfa_devices(params = {}, options = {})
      req = build_request(:list_virtual_mfa_devices, params)
      req.send_request(options)
    end

    # Adds or updates an inline policy document that is embedded in the
    # specified IAM group.
    #
    # A user can also have managed policies attached to it. To attach a
    # managed policy to a group, use AttachGroupPolicy. To create a new
    # managed policy, use CreatePolicy. For information about policies, see
    # [Managed Policies and Inline Policies][1] in the *IAM User Guide*.
    #
    # For information about limits on the number of inline policies that you
    # can embed in a group, see [Limitations on IAM Entities][2] in the *IAM
    # User Guide*.
    #
    # <note markdown="1"> Because policy documents can be large, you should use POST rather than
    # GET when calling `PutGroupPolicy`. For general information about using
    # the Query API with IAM, go to [Making Query Requests][3] in the *IAM
    # User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    # [3]: http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html
    #
    # @option params [required, String] :group_name
    #   The name of the group to associate the policy with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_document
    #   The policy document.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_group_policy({
    #     group_name: "groupNameType", # required
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutGroupPolicy AWS API Documentation
    #
    # @overload put_group_policy(params = {})
    # @param [Hash] params ({})
    def put_group_policy(params = {}, options = {})
      req = build_request(:put_group_policy, params)
      req.send_request(options)
    end

    # Adds or updates an inline policy document that is embedded in the
    # specified IAM role.
    #
    # When you embed an inline policy in a role, the inline policy is used
    # as part of the role's access (permissions) policy. The role's trust
    # policy is created at the same time as the role, using CreateRole. You
    # can update a role's trust policy using UpdateAssumeRolePolicy. For
    # more information about IAM roles, go to [Using Roles to Delegate
    # Permissions and Federate Identities][1].
    #
    # A role can also have a managed policy attached to it. To attach a
    # managed policy to a role, use AttachRolePolicy. To create a new
    # managed policy, use CreatePolicy. For information about policies, see
    # [Managed Policies and Inline Policies][2] in the *IAM User Guide*.
    #
    # For information about limits on the number of inline policies that you
    # can embed with a role, see [Limitations on IAM Entities][3] in the
    # *IAM User Guide*.
    #
    # <note markdown="1"> Because policy documents can be large, you should use POST rather than
    # GET when calling `PutRolePolicy`. For general information about using
    # the Query API with IAM, go to [Making Query Requests][4] in the *IAM
    # User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    # [3]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    # [4]: http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html
    #
    # @option params [required, String] :role_name
    #   The name of the role to associate the policy with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_document
    #   The policy document.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_role_policy({
    #     role_name: "roleNameType", # required
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutRolePolicy AWS API Documentation
    #
    # @overload put_role_policy(params = {})
    # @param [Hash] params ({})
    def put_role_policy(params = {}, options = {})
      req = build_request(:put_role_policy, params)
      req.send_request(options)
    end

    # Adds or updates an inline policy document that is embedded in the
    # specified IAM user.
    #
    # An IAM user can also have a managed policy attached to it. To attach a
    # managed policy to a user, use AttachUserPolicy. To create a new
    # managed policy, use CreatePolicy. For information about policies, see
    # [Managed Policies and Inline Policies][1] in the *IAM User Guide*.
    #
    # For information about limits on the number of inline policies that you
    # can embed in a user, see [Limitations on IAM Entities][2] in the *IAM
    # User Guide*.
    #
    # <note markdown="1"> Because policy documents can be large, you should use POST rather than
    # GET when calling `PutUserPolicy`. For general information about using
    # the Query API with IAM, go to [Making Query Requests][3] in the *IAM
    # User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html
    # [3]: http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html
    #
    # @option params [required, String] :user_name
    #   The name of the user to associate the policy with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_document
    #   The policy document.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_user_policy({
    #     user_name: "existingUserNameType", # required
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutUserPolicy AWS API Documentation
    #
    # @overload put_user_policy(params = {})
    # @param [Hash] params ({})
    def put_user_policy(params = {}, options = {})
      req = build_request(:put_user_policy, params)
      req.send_request(options)
    end

    # Removes the specified client ID (also known as audience) from the list
    # of client IDs registered for the specified IAM OpenID Connect (OIDC)
    # provider resource object.
    #
    # This action is idempotent; it does not fail or return an error if you
    # try to remove a client ID that does not exist.
    #
    # @option params [required, String] :open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OIDC provider resource to
    #   remove the client ID from. You can get a list of OIDC provider ARNs by
    #   using the ListOpenIDConnectProviders action.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :client_id
    #   The client ID (also known as audience) to remove from the IAM OIDC
    #   provider resource. For more information about client IDs, see
    #   CreateOpenIDConnectProvider.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_client_id_from_open_id_connect_provider({
    #     open_id_connect_provider_arn: "arnType", # required
    #     client_id: "clientIDType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveClientIDFromOpenIDConnectProvider AWS API Documentation
    #
    # @overload remove_client_id_from_open_id_connect_provider(params = {})
    # @param [Hash] params ({})
    def remove_client_id_from_open_id_connect_provider(params = {}, options = {})
      req = build_request(:remove_client_id_from_open_id_connect_provider, params)
      req.send_request(options)
    end

    # Removes the specified IAM role from the specified EC2 instance
    # profile.
    #
    # Make sure you do not have any Amazon EC2 instances running with the
    # role you are about to remove from the instance profile. Removing a
    # role from an instance profile that is associated with a running
    # instance break any applications running on the instance.
    #
    # For more information about IAM roles, go to [Working with Roles][1].
    # For more information about instance profiles, go to [About Instance
    # Profiles][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html
    #
    # @option params [required, String] :instance_profile_name
    #   The name of the instance profile to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :role_name
    #   The name of the role to remove.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_role_from_instance_profile({
    #     instance_profile_name: "instanceProfileNameType", # required
    #     role_name: "roleNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveRoleFromInstanceProfile AWS API Documentation
    #
    # @overload remove_role_from_instance_profile(params = {})
    # @param [Hash] params ({})
    def remove_role_from_instance_profile(params = {}, options = {})
      req = build_request(:remove_role_from_instance_profile, params)
      req.send_request(options)
    end

    # Removes the specified user from the specified group.
    #
    # @option params [required, String] :group_name
    #   The name of the group to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :user_name
    #   The name of the user to remove.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_user_from_group({
    #     group_name: "groupNameType", # required
    #     user_name: "existingUserNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveUserFromGroup AWS API Documentation
    #
    # @overload remove_user_from_group(params = {})
    # @param [Hash] params ({})
    def remove_user_from_group(params = {}, options = {})
      req = build_request(:remove_user_from_group, params)
      req.send_request(options)
    end

    # Resets the password for a service-specific credential. The new
    # password is AWS generated and cryptographically strong. It cannot be
    # configured by the user. Resetting the password immediately invalidates
    # the previous password associated with this user.
    #
    # @option params [String] :user_name
    #   The name of the IAM user associated with the service-specific
    #   credential. If this value is not specified, then the operation assumes
    #   the user whose credentials are used to call the operation.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :service_specific_credential_id
    #   The unique identifier of the service-specific credential.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::ResetServiceSpecificCredentialResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetServiceSpecificCredentialResponse#service_specific_credential #service_specific_credential} => Types::ServiceSpecificCredential
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_service_specific_credential({
    #     user_name: "userNameType",
    #     service_specific_credential_id: "serviceSpecificCredentialId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_specific_credential.create_date #=> Time
    #   resp.service_specific_credential.service_name #=> String
    #   resp.service_specific_credential.service_user_name #=> String
    #   resp.service_specific_credential.service_password #=> String
    #   resp.service_specific_credential.service_specific_credential_id #=> String
    #   resp.service_specific_credential.user_name #=> String
    #   resp.service_specific_credential.status #=> String, one of "Active", "Inactive"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResetServiceSpecificCredential AWS API Documentation
    #
    # @overload reset_service_specific_credential(params = {})
    # @param [Hash] params ({})
    def reset_service_specific_credential(params = {}, options = {})
      req = build_request(:reset_service_specific_credential, params)
      req.send_request(options)
    end

    # Synchronizes the specified MFA device with its IAM resource object on
    # the AWS servers.
    #
    # For more information about creating and working with virtual MFA
    # devices, go to [Using a Virtual MFA Device][1] in the *IAM User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html
    #
    # @option params [required, String] :user_name
    #   The name of the user whose MFA device you want to resynchronize.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :serial_number
    #   Serial number that uniquely identifies the MFA device.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :authentication_code_1
    #   An authentication code emitted by the device.
    #
    #   The format for this parameter is a sequence of six digits.
    #
    # @option params [required, String] :authentication_code_2
    #   A subsequent authentication code emitted by the device.
    #
    #   The format for this parameter is a sequence of six digits.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resync_mfa_device({
    #     user_name: "existingUserNameType", # required
    #     serial_number: "serialNumberType", # required
    #     authentication_code_1: "authenticationCodeType", # required
    #     authentication_code_2: "authenticationCodeType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResyncMFADevice AWS API Documentation
    #
    # @overload resync_mfa_device(params = {})
    # @param [Hash] params ({})
    def resync_mfa_device(params = {}, options = {})
      req = build_request(:resync_mfa_device, params)
      req.send_request(options)
    end

    # Sets the specified version of the specified policy as the policy's
    # default (operative) version.
    #
    # This action affects all users, groups, and roles that the policy is
    # attached to. To list the users, groups, and roles that the policy is
    # attached to, use the ListEntitiesForPolicy API.
    #
    # For information about managed policies, see [Managed Policies and
    # Inline Policies][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy whose default version
    #   you want to set.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :version_id
    #   The version of the policy to set as the default (operative) version.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for Managed Policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_policy_version({
    #     policy_arn: "arnType", # required
    #     version_id: "policyVersionIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SetDefaultPolicyVersion AWS API Documentation
    #
    # @overload set_default_policy_version(params = {})
    # @param [Hash] params ({})
    def set_default_policy_version(params = {}, options = {})
      req = build_request(:set_default_policy_version, params)
      req.send_request(options)
    end

    # Simulate how a set of IAM policies and optionally a resource-based
    # policy works with a list of API actions and AWS resources to determine
    # the policies' effective permissions. The policies are provided as
    # strings.
    #
    # The simulation does not perform the API actions; it only checks the
    # authorization to determine if the simulated policies allow or deny the
    # actions.
    #
    # If you want to simulate existing policies attached to an IAM user,
    # group, or role, use SimulatePrincipalPolicy instead.
    #
    # Context keys are variables maintained by AWS and its services that
    # provide details about the context of an API query request. You can use
    # the `Condition` element of an IAM policy to evaluate context keys. To
    # get the list of context keys that the policies require for correct
    # simulation, use GetContextKeysForCustomPolicy.
    #
    # If the output is long, you can use `MaxItems` and `Marker` parameters
    # to paginate the results.
    #
    # @option params [required, Array<String>] :policy_input_list
    #   A list of policy documents to include in the simulation. Each document
    #   is specified as a string containing the complete, valid JSON text of
    #   an IAM policy. Do not include any resource-based policies in this
    #   parameter. Any resource-based policy must be submitted with the
    #   `ResourcePolicy` parameter. The policies cannot be "scope-down"
    #   policies, such as you could include in a call to
    #   [GetFederationToken][1] or one of the [AssumeRole][2] APIs to restrict
    #   what a user can do while using the temporary credentials.
    #
    #   The [regex pattern][3] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html
    #   [2]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html
    #   [3]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, Array<String>] :action_names
    #   A list of names of API actions to evaluate in the simulation. Each
    #   action is evaluated against each resource. Each action must include
    #   the service identifier, such as `iam:CreateUser`.
    #
    # @option params [Array<String>] :resource_arns
    #   A list of ARNs of AWS resources to include in the simulation. If this
    #   parameter is not provided then the value defaults to `*` (all
    #   resources). Each API in the `ActionNames` parameter is evaluated for
    #   each resource in this list. The simulation determines the access
    #   result (allowed or denied) of each combination and reports it in the
    #   response.
    #
    #   The simulation does not automatically retrieve policies for the
    #   specified resources. If you want to include a resource policy in the
    #   simulation, then you must include the policy as a string in the
    #   `ResourcePolicy` parameter.
    #
    #   If you include a `ResourcePolicy`, then it must be applicable to all
    #   of the resources included in the simulation or you receive an invalid
    #   input error.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :resource_policy
    #   A resource-based policy to include in the simulation provided as a
    #   string. Each resource in the simulation is treated as if it had this
    #   policy attached. You can include only one resource-based policy in a
    #   simulation.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :resource_owner
    #   An AWS account ID that specifies the owner of any simulated resource
    #   that does not identify its owner in the resource ARN, such as an S3
    #   bucket or object. If `ResourceOwner` is specified, it is also used as
    #   the account owner of any `ResourcePolicy` included in the simulation.
    #   If the `ResourceOwner` parameter is not specified, then the owner of
    #   the resources and the resource policy defaults to the account of the
    #   identity provided in `CallerArn`. This parameter is required only if
    #   you specify a resource-based policy and account that owns the resource
    #   is different from the account that owns the simulated calling user
    #   `CallerArn`.
    #
    # @option params [String] :caller_arn
    #   The ARN of the IAM user that you want to use as the simulated caller
    #   of the APIs. `CallerArn` is required if you include a `ResourcePolicy`
    #   so that the policy's `Principal` element has a value to use in
    #   evaluating the policy.
    #
    #   You can specify only the ARN of an IAM user. You cannot specify the
    #   ARN of an assumed role, federated user, or a service principal.
    #
    # @option params [Array<Types::ContextEntry>] :context_entries
    #   A list of context keys and corresponding values for the simulation to
    #   use. Whenever a context key is evaluated in one of the simulated IAM
    #   permission policies, the corresponding value is supplied.
    #
    # @option params [String] :resource_handling_option
    #   Specifies the type of simulation to run. Different APIs that support
    #   resource-based policies require different combinations of resources.
    #   By specifying the type of simulation to run, you enable the policy
    #   simulator to enforce the presence of the required resources to ensure
    #   reliable simulation results. If your simulation does not match one of
    #   the following scenarios, then you can omit this parameter. The
    #   following list shows each of the supported scenario values and the
    #   resources that you must define to run the simulation.
    #
    #   Each of the EC2 scenarios requires that you specify instance, image,
    #   and security-group resources. If your scenario includes an EBS volume,
    #   then you must specify that volume as a resource. If the EC2 scenario
    #   includes VPC, then you must supply the network-interface resource. If
    #   it includes an IP subnet, then you must specify the subnet resource.
    #   For more information on the EC2 scenario options, see [Supported
    #   Platforms][1] in the *AWS EC2 User Guide*.
    #
    #   * **EC2-Classic-InstanceStore**
    #
    #     instance, image, security-group
    #
    #   * **EC2-Classic-EBS**
    #
    #     instance, image, security-group, volume
    #
    #   * **EC2-VPC-InstanceStore**
    #
    #     instance, image, security-group, network-interface
    #
    #   * **EC2-VPC-InstanceStore-Subnet**
    #
    #     instance, image, security-group, network-interface, subnet
    #
    #   * **EC2-VPC-EBS**
    #
    #     instance, image, security-group, network-interface, volume
    #
    #   * **EC2-VPC-EBS-Subnet**
    #
    #     instance, image, security-group, network-interface, subnet, volume
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @return [Types::SimulatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SimulatePolicyResponse#evaluation_results #evaluation_results} => Array&lt;Types::EvaluationResult&gt;
    #   * {Types::SimulatePolicyResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::SimulatePolicyResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.simulate_custom_policy({
    #     policy_input_list: ["policyDocumentType"], # required
    #     action_names: ["ActionNameType"], # required
    #     resource_arns: ["ResourceNameType"],
    #     resource_policy: "policyDocumentType",
    #     resource_owner: "ResourceNameType",
    #     caller_arn: "ResourceNameType",
    #     context_entries: [
    #       {
    #         context_key_name: "ContextKeyNameType",
    #         context_key_values: ["ContextKeyValueType"],
    #         context_key_type: "string", # accepts string, stringList, numeric, numericList, boolean, booleanList, ip, ipList, binary, binaryList, date, dateList
    #       },
    #     ],
    #     resource_handling_option: "ResourceHandlingOptionType",
    #     max_items: 1,
    #     marker: "markerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_results #=> Array
    #   resp.evaluation_results[0].eval_action_name #=> String
    #   resp.evaluation_results[0].eval_resource_name #=> String
    #   resp.evaluation_results[0].eval_decision #=> String, one of "allowed", "explicitDeny", "implicitDeny"
    #   resp.evaluation_results[0].matched_statements #=> Array
    #   resp.evaluation_results[0].matched_statements[0].source_policy_id #=> String
    #   resp.evaluation_results[0].matched_statements[0].source_policy_type #=> String, one of "user", "group", "role", "aws-managed", "user-managed", "resource", "none"
    #   resp.evaluation_results[0].matched_statements[0].start_position.line #=> Integer
    #   resp.evaluation_results[0].matched_statements[0].start_position.column #=> Integer
    #   resp.evaluation_results[0].matched_statements[0].end_position.line #=> Integer
    #   resp.evaluation_results[0].matched_statements[0].end_position.column #=> Integer
    #   resp.evaluation_results[0].missing_context_values #=> Array
    #   resp.evaluation_results[0].missing_context_values[0] #=> String
    #   resp.evaluation_results[0].organizations_decision_detail.allowed_by_organizations #=> Boolean
    #   resp.evaluation_results[0].eval_decision_details #=> Hash
    #   resp.evaluation_results[0].eval_decision_details["EvalDecisionSourceType"] #=> String, one of "allowed", "explicitDeny", "implicitDeny"
    #   resp.evaluation_results[0].resource_specific_results #=> Array
    #   resp.evaluation_results[0].resource_specific_results[0].eval_resource_name #=> String
    #   resp.evaluation_results[0].resource_specific_results[0].eval_resource_decision #=> String, one of "allowed", "explicitDeny", "implicitDeny"
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements #=> Array
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].source_policy_id #=> String
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].source_policy_type #=> String, one of "user", "group", "role", "aws-managed", "user-managed", "resource", "none"
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].start_position.line #=> Integer
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].start_position.column #=> Integer
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].end_position.line #=> Integer
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].end_position.column #=> Integer
    #   resp.evaluation_results[0].resource_specific_results[0].missing_context_values #=> Array
    #   resp.evaluation_results[0].resource_specific_results[0].missing_context_values[0] #=> String
    #   resp.evaluation_results[0].resource_specific_results[0].eval_decision_details #=> Hash
    #   resp.evaluation_results[0].resource_specific_results[0].eval_decision_details["EvalDecisionSourceType"] #=> String, one of "allowed", "explicitDeny", "implicitDeny"
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulateCustomPolicy AWS API Documentation
    #
    # @overload simulate_custom_policy(params = {})
    # @param [Hash] params ({})
    def simulate_custom_policy(params = {}, options = {})
      req = build_request(:simulate_custom_policy, params)
      req.send_request(options)
    end

    # Simulate how a set of IAM policies attached to an IAM entity works
    # with a list of API actions and AWS resources to determine the
    # policies' effective permissions. The entity can be an IAM user,
    # group, or role. If you specify a user, then the simulation also
    # includes all of the policies that are attached to groups that the user
    # belongs to .
    #
    # You can optionally include a list of one or more additional policies
    # specified as strings to include in the simulation. If you want to
    # simulate only policies specified as strings, use SimulateCustomPolicy
    # instead.
    #
    # You can also optionally include one resource-based policy to be
    # evaluated with each of the resources included in the simulation.
    #
    # The simulation does not perform the API actions, it only checks the
    # authorization to determine if the simulated policies allow or deny the
    # actions.
    #
    # **Note:** This API discloses information about the permissions granted
    # to other users. If you do not want users to see other user's
    # permissions, then consider allowing them to use SimulateCustomPolicy
    # instead.
    #
    # Context keys are variables maintained by AWS and its services that
    # provide details about the context of an API query request. You can use
    # the `Condition` element of an IAM policy to evaluate context keys. To
    # get the list of context keys that the policies require for correct
    # simulation, use GetContextKeysForPrincipalPolicy.
    #
    # If the output is long, you can use the `MaxItems` and `Marker`
    # parameters to paginate the results.
    #
    # @option params [required, String] :policy_source_arn
    #   The Amazon Resource Name (ARN) of a user, group, or role whose
    #   policies you want to include in the simulation. If you specify a user,
    #   group, or role, the simulation includes all policies that are
    #   associated with that entity. If you specify a user, the simulation
    #   also includes all policies that are attached to any groups the user
    #   belongs to.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :policy_input_list
    #   An optional list of additional policy documents to include in the
    #   simulation. Each document is specified as a string containing the
    #   complete, valid JSON text of an IAM policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, Array<String>] :action_names
    #   A list of names of API actions to evaluate in the simulation. Each
    #   action is evaluated for each resource. Each action must include the
    #   service identifier, such as `iam:CreateUser`.
    #
    # @option params [Array<String>] :resource_arns
    #   A list of ARNs of AWS resources to include in the simulation. If this
    #   parameter is not provided then the value defaults to `*` (all
    #   resources). Each API in the `ActionNames` parameter is evaluated for
    #   each resource in this list. The simulation determines the access
    #   result (allowed or denied) of each combination and reports it in the
    #   response.
    #
    #   The simulation does not automatically retrieve policies for the
    #   specified resources. If you want to include a resource policy in the
    #   simulation, then you must include the policy as a string in the
    #   `ResourcePolicy` parameter.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :resource_policy
    #   A resource-based policy to include in the simulation provided as a
    #   string. Each resource in the simulation is treated as if it had this
    #   policy attached. You can include only one resource-based policy in a
    #   simulation.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :resource_owner
    #   An AWS account ID that specifies the owner of any simulated resource
    #   that does not identify its owner in the resource ARN, such as an S3
    #   bucket or object. If `ResourceOwner` is specified, it is also used as
    #   the account owner of any `ResourcePolicy` included in the simulation.
    #   If the `ResourceOwner` parameter is not specified, then the owner of
    #   the resources and the resource policy defaults to the account of the
    #   identity provided in `CallerArn`. This parameter is required only if
    #   you specify a resource-based policy and account that owns the resource
    #   is different from the account that owns the simulated calling user
    #   `CallerArn`.
    #
    # @option params [String] :caller_arn
    #   The ARN of the IAM user that you want to specify as the simulated
    #   caller of the APIs. If you do not specify a `CallerArn`, it defaults
    #   to the ARN of the user that you specify in `PolicySourceArn`, if you
    #   specified a user. If you include both a `PolicySourceArn` (for
    #   example, `arn:aws:iam::123456789012:user/David`) and a `CallerArn`
    #   (for example, `arn:aws:iam::123456789012:user/Bob`), the result is
    #   that you simulate calling the APIs as Bob, as if Bob had David's
    #   policies.
    #
    #   You can specify only the ARN of an IAM user. You cannot specify the
    #   ARN of an assumed role, federated user, or a service principal.
    #
    #   `CallerArn` is required if you include a `ResourcePolicy` and the
    #   `PolicySourceArn` is not the ARN for an IAM user. This is required so
    #   that the resource-based policy's `Principal` element has a value to
    #   use in evaluating the policy.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<Types::ContextEntry>] :context_entries
    #   A list of context keys and corresponding values for the simulation to
    #   use. Whenever a context key is evaluated in one of the simulated IAM
    #   permission policies, the corresponding value is supplied.
    #
    # @option params [String] :resource_handling_option
    #   Specifies the type of simulation to run. Different APIs that support
    #   resource-based policies require different combinations of resources.
    #   By specifying the type of simulation to run, you enable the policy
    #   simulator to enforce the presence of the required resources to ensure
    #   reliable simulation results. If your simulation does not match one of
    #   the following scenarios, then you can omit this parameter. The
    #   following list shows each of the supported scenario values and the
    #   resources that you must define to run the simulation.
    #
    #   Each of the EC2 scenarios requires that you specify instance, image,
    #   and security-group resources. If your scenario includes an EBS volume,
    #   then you must specify that volume as a resource. If the EC2 scenario
    #   includes VPC, then you must supply the network-interface resource. If
    #   it includes an IP subnet, then you must specify the subnet resource.
    #   For more information on the EC2 scenario options, see [Supported
    #   Platforms][1] in the *AWS EC2 User Guide*.
    #
    #   * **EC2-Classic-InstanceStore**
    #
    #     instance, image, security-group
    #
    #   * **EC2-Classic-EBS**
    #
    #     instance, image, security-group, volume
    #
    #   * **EC2-VPC-InstanceStore**
    #
    #     instance, image, security-group, network-interface
    #
    #   * **EC2-VPC-InstanceStore-Subnet**
    #
    #     instance, image, security-group, network-interface, subnet
    #
    #   * **EC2-VPC-EBS**
    #
    #     instance, image, security-group, network-interface, volume
    #
    #   * **EC2-VPC-EBS-Subnet**
    #
    #     instance, image, security-group, network-interface, subnet, volume
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #
    # @option params [Integer] :max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional items
    #   exist beyond the maximum you specify, the `IsTruncated` response
    #   element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent call
    #   that tells the service where to continue from.
    #
    # @option params [String] :marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you received
    #   to indicate where the next call should start.
    #
    # @return [Types::SimulatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SimulatePolicyResponse#evaluation_results #evaluation_results} => Array&lt;Types::EvaluationResult&gt;
    #   * {Types::SimulatePolicyResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::SimulatePolicyResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.simulate_principal_policy({
    #     policy_source_arn: "arnType", # required
    #     policy_input_list: ["policyDocumentType"],
    #     action_names: ["ActionNameType"], # required
    #     resource_arns: ["ResourceNameType"],
    #     resource_policy: "policyDocumentType",
    #     resource_owner: "ResourceNameType",
    #     caller_arn: "ResourceNameType",
    #     context_entries: [
    #       {
    #         context_key_name: "ContextKeyNameType",
    #         context_key_values: ["ContextKeyValueType"],
    #         context_key_type: "string", # accepts string, stringList, numeric, numericList, boolean, booleanList, ip, ipList, binary, binaryList, date, dateList
    #       },
    #     ],
    #     resource_handling_option: "ResourceHandlingOptionType",
    #     max_items: 1,
    #     marker: "markerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_results #=> Array
    #   resp.evaluation_results[0].eval_action_name #=> String
    #   resp.evaluation_results[0].eval_resource_name #=> String
    #   resp.evaluation_results[0].eval_decision #=> String, one of "allowed", "explicitDeny", "implicitDeny"
    #   resp.evaluation_results[0].matched_statements #=> Array
    #   resp.evaluation_results[0].matched_statements[0].source_policy_id #=> String
    #   resp.evaluation_results[0].matched_statements[0].source_policy_type #=> String, one of "user", "group", "role", "aws-managed", "user-managed", "resource", "none"
    #   resp.evaluation_results[0].matched_statements[0].start_position.line #=> Integer
    #   resp.evaluation_results[0].matched_statements[0].start_position.column #=> Integer
    #   resp.evaluation_results[0].matched_statements[0].end_position.line #=> Integer
    #   resp.evaluation_results[0].matched_statements[0].end_position.column #=> Integer
    #   resp.evaluation_results[0].missing_context_values #=> Array
    #   resp.evaluation_results[0].missing_context_values[0] #=> String
    #   resp.evaluation_results[0].organizations_decision_detail.allowed_by_organizations #=> Boolean
    #   resp.evaluation_results[0].eval_decision_details #=> Hash
    #   resp.evaluation_results[0].eval_decision_details["EvalDecisionSourceType"] #=> String, one of "allowed", "explicitDeny", "implicitDeny"
    #   resp.evaluation_results[0].resource_specific_results #=> Array
    #   resp.evaluation_results[0].resource_specific_results[0].eval_resource_name #=> String
    #   resp.evaluation_results[0].resource_specific_results[0].eval_resource_decision #=> String, one of "allowed", "explicitDeny", "implicitDeny"
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements #=> Array
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].source_policy_id #=> String
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].source_policy_type #=> String, one of "user", "group", "role", "aws-managed", "user-managed", "resource", "none"
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].start_position.line #=> Integer
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].start_position.column #=> Integer
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].end_position.line #=> Integer
    #   resp.evaluation_results[0].resource_specific_results[0].matched_statements[0].end_position.column #=> Integer
    #   resp.evaluation_results[0].resource_specific_results[0].missing_context_values #=> Array
    #   resp.evaluation_results[0].resource_specific_results[0].missing_context_values[0] #=> String
    #   resp.evaluation_results[0].resource_specific_results[0].eval_decision_details #=> Hash
    #   resp.evaluation_results[0].resource_specific_results[0].eval_decision_details["EvalDecisionSourceType"] #=> String, one of "allowed", "explicitDeny", "implicitDeny"
    #   resp.is_truncated #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulatePrincipalPolicy AWS API Documentation
    #
    # @overload simulate_principal_policy(params = {})
    # @param [Hash] params ({})
    def simulate_principal_policy(params = {}, options = {})
      req = build_request(:simulate_principal_policy, params)
      req.send_request(options)
    end

    # Changes the status of the specified access key from Active to
    # Inactive, or vice versa. This action can be used to disable a user's
    # key as part of a key rotation work flow.
    #
    # If the `UserName` field is not specified, the UserName is determined
    # implicitly based on the AWS access key ID used to sign the request.
    # Because this action works for access keys under the AWS account, you
    # can use this action to manage root credentials even if the AWS account
    # has no associated users.
    #
    # For information about rotating keys, see [Managing Keys and
    # Certificates][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html
    #
    # @option params [String] :user_name
    #   The name of the user whose key you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :access_key_id
    #   The access key ID of the secret access key you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :status
    #   The status you want to assign to the secret access key. `Active` means
    #   the key can be used for API calls to AWS, while `Inactive` means the
    #   key cannot be used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_key({
    #     user_name: "existingUserNameType",
    #     access_key_id: "accessKeyIdType", # required
    #     status: "Active", # required, accepts Active, Inactive
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAccessKey AWS API Documentation
    #
    # @overload update_access_key(params = {})
    # @param [Hash] params ({})
    def update_access_key(params = {}, options = {})
      req = build_request(:update_access_key, params)
      req.send_request(options)
    end

    # Updates the password policy settings for the AWS account.
    #
    # <note markdown="1"> This action does not support partial updates. No parameters are
    # required, but if you do not specify a parameter, that parameter's
    # value reverts to its default value. See the **Request Parameters**
    # section for each parameter's default value.
    #
    #  </note>
    #
    # For more information about using a password policy, see [Managing an
    # IAM Password Policy][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html
    #
    # @option params [Integer] :minimum_password_length
    #   The minimum number of characters allowed in an IAM user password.
    #
    #   Default value: 6
    #
    # @option params [Boolean] :require_symbols
    #   Specifies whether IAM user passwords must contain at least one of the
    #   following non-alphanumeric characters:
    #
    #   ! @ # $ % ^ &amp;amp; * ( ) \_ + - = \[ \] \\\{ \\} \| '
    #
    #   Default value: false
    #
    # @option params [Boolean] :require_numbers
    #   Specifies whether IAM user passwords must contain at least one numeric
    #   character (0 to 9).
    #
    #   Default value: false
    #
    # @option params [Boolean] :require_uppercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   uppercase character from the ISO basic Latin alphabet (A to Z).
    #
    #   Default value: false
    #
    # @option params [Boolean] :require_lowercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   lowercase character from the ISO basic Latin alphabet (a to z).
    #
    #   Default value: false
    #
    # @option params [Boolean] :allow_users_to_change_password
    #   Allows all IAM users in your account to use the AWS Management Console
    #   to change their own passwords. For more information, see [Letting IAM
    #   Users Change Their Own Passwords][1] in the *IAM User Guide*.
    #
    #   Default value: false
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html
    #
    # @option params [Integer] :max_password_age
    #   The number of days that an IAM user password is valid. The default
    #   value of 0 means IAM user passwords never expire.
    #
    #   Default value: 0
    #
    # @option params [Integer] :password_reuse_prevention
    #   Specifies the number of previous passwords that IAM users are
    #   prevented from reusing. The default value of 0 means IAM users are not
    #   prevented from reusing previous passwords.
    #
    #   Default value: 0
    #
    # @option params [Boolean] :hard_expiry
    #   Prevents IAM users from setting a new password after their password
    #   has expired.
    #
    #   Default value: false
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_password_policy({
    #     minimum_password_length: 1,
    #     require_symbols: false,
    #     require_numbers: false,
    #     require_uppercase_characters: false,
    #     require_lowercase_characters: false,
    #     allow_users_to_change_password: false,
    #     max_password_age: 1,
    #     password_reuse_prevention: 1,
    #     hard_expiry: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAccountPasswordPolicy AWS API Documentation
    #
    # @overload update_account_password_policy(params = {})
    # @param [Hash] params ({})
    def update_account_password_policy(params = {}, options = {})
      req = build_request(:update_account_password_policy, params)
      req.send_request(options)
    end

    # Updates the policy that grants an IAM entity permission to assume a
    # role. This is typically referred to as the "role trust policy". For
    # more information about roles, go to [Using Roles to Delegate
    # Permissions and Federate Identities][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html
    #
    # @option params [required, String] :role_name
    #   The name of the role to update with the new policy.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_document
    #   The policy that grants an entity permission to assume the role.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assume_role_policy({
    #     role_name: "roleNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAssumeRolePolicy AWS API Documentation
    #
    # @overload update_assume_role_policy(params = {})
    # @param [Hash] params ({})
    def update_assume_role_policy(params = {}, options = {})
      req = build_request(:update_assume_role_policy, params)
      req.send_request(options)
    end

    # Updates the name and/or the path of the specified IAM group.
    #
    # You should understand the implications of changing a group's path or
    # name. For more information, see [Renaming Users and Groups][1] in the
    # *IAM User Guide*.
    #
    # <note markdown="1"> To change an IAM group name the requester must have appropriate
    # permissions on both the source object and the target object. For
    # example, to change "Managers" to "MGRs", the entity making the
    # request must have permission on both "Managers" and "MGRs", or
    # must have permission on all (*). For more information about
    # permissions, see [Permissions and Policies][2].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html
    #
    # @option params [required, String] :group_name
    #   Name of the IAM group to update. If you're changing the name of the
    #   group, this is the original name.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :new_path
    #   New path for the IAM group. Only include this if changing the group's
    #   path.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :new_group_name
    #   New name for the IAM group. Only include this if changing the group's
    #   name.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "groupNameType", # required
    #     new_path: "pathType",
    #     new_group_name: "groupNameType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Changes the password for the specified IAM user.
    #
    # IAM users can change their own passwords by calling ChangePassword.
    # For more information about modifying passwords, see [Managing
    # Passwords][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html
    #
    # @option params [required, String] :user_name
    #   The name of the user whose password you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :password
    #   The new password for the specified IAM user.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D). However, the format can be further restricted by the
    #   account administrator by setting a password policy on the AWS account.
    #   For more information, see UpdateAccountPasswordPolicy.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [Boolean] :password_reset_required
    #   Allows this new password to be used only once by requiring the
    #   specified IAM user to set a new password on next sign-in.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_login_profile({
    #     user_name: "userNameType", # required
    #     password: "passwordType",
    #     password_reset_required: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateLoginProfile AWS API Documentation
    #
    # @overload update_login_profile(params = {})
    # @param [Hash] params ({})
    def update_login_profile(params = {}, options = {})
      req = build_request(:update_login_profile, params)
      req.send_request(options)
    end

    # Replaces the existing list of server certificate thumbprints
    # associated with an OpenID Connect (OIDC) provider resource object with
    # a new list of thumbprints.
    #
    # The list that you pass with this action completely replaces the
    # existing list of thumbprints. (The lists are not merged.)
    #
    # Typically, you need to update a thumbprint only when the identity
    # provider's certificate changes, which occurs rarely. However, if the
    # provider's certificate *does* change, any attempt to assume an IAM
    # role that specifies the OIDC provider as a principal fails until the
    # certificate thumbprint is updated.
    #
    # <note markdown="1"> Because trust for the OIDC provider is ultimately derived from the
    # provider's certificate and is validated by the thumbprint, it is a
    # best practice to limit access to the
    # `UpdateOpenIDConnectProviderThumbprint` action to highly-privileged
    # users.
    #
    #  </note>
    #
    # @option params [required, String] :open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OIDC provider resource
    #   object for which you want to update the thumbprint. You can get a list
    #   of OIDC provider ARNs by using the ListOpenIDConnectProviders action.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :thumbprint_list
    #   A list of certificate thumbprints that are associated with the
    #   specified IAM OpenID Connect provider. For more information, see
    #   CreateOpenIDConnectProvider.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_open_id_connect_provider_thumbprint({
    #     open_id_connect_provider_arn: "arnType", # required
    #     thumbprint_list: ["thumbprintType"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateOpenIDConnectProviderThumbprint AWS API Documentation
    #
    # @overload update_open_id_connect_provider_thumbprint(params = {})
    # @param [Hash] params ({})
    def update_open_id_connect_provider_thumbprint(params = {}, options = {})
      req = build_request(:update_open_id_connect_provider_thumbprint, params)
      req.send_request(options)
    end

    # Updates the metadata document for an existing SAML provider resource
    # object.
    #
    # <note markdown="1"> This operation requires [Signature Version 4][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :saml_metadata_document
    #   An XML document generated by an identity provider (IdP) that supports
    #   SAML 2.0. The document includes the issuer's name, expiration
    #   information, and keys that can be used to validate the SAML
    #   authentication response (assertions) that are received from the IdP.
    #   You must generate the metadata document using the identity management
    #   software that is used as your organization's IdP.
    #
    # @option params [required, String] :saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider to update.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::UpdateSAMLProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSAMLProviderResponse#saml_provider_arn #saml_provider_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_saml_provider({
    #     saml_metadata_document: "SAMLMetadataDocumentType", # required
    #     saml_provider_arn: "arnType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.saml_provider_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSAMLProvider AWS API Documentation
    #
    # @overload update_saml_provider(params = {})
    # @param [Hash] params ({})
    def update_saml_provider(params = {}, options = {})
      req = build_request(:update_saml_provider, params)
      req.send_request(options)
    end

    # Sets the status of an IAM user's SSH public key to active or
    # inactive. SSH public keys that are inactive cannot be used for
    # authentication. This action can be used to disable a user's SSH
    # public key as part of a key rotation work flow.
    #
    # The SSH public key affected by this action is used only for
    # authenticating the associated IAM user to an AWS CodeCommit
    # repository. For more information about using SSH keys to authenticate
    # to an AWS CodeCommit repository, see [Set up AWS CodeCommit for SSH
    # Connections][1] in the *AWS CodeCommit User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
    #
    # @option params [required, String] :user_name
    #   The name of the IAM user associated with the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :status
    #   The status to assign to the SSH public key. `Active` means the key can
    #   be used for authentication with an AWS CodeCommit repository.
    #   `Inactive` means the key cannot be used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ssh_public_key({
    #     user_name: "userNameType", # required
    #     ssh_public_key_id: "publicKeyIdType", # required
    #     status: "Active", # required, accepts Active, Inactive
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSSHPublicKey AWS API Documentation
    #
    # @overload update_ssh_public_key(params = {})
    # @param [Hash] params ({})
    def update_ssh_public_key(params = {}, options = {})
      req = build_request(:update_ssh_public_key, params)
      req.send_request(options)
    end

    # Updates the name and/or the path of the specified server certificate
    # stored in IAM.
    #
    # For more information about working with server certificates, including
    # a list of AWS services that can use the server certificates that you
    # manage with IAM, go to [Working with Server Certificates][1] in the
    # *IAM User Guide*.
    #
    # You should understand the implications of changing a server
    # certificate's path or name. For more information, see [Renaming a
    # Server Certificate][2] in the *IAM User Guide*.
    #
    # <note markdown="1"> To change a server certificate name the requester must have
    # appropriate permissions on both the source object and the target
    # object. For example, to change the name from "ProductionCert" to
    # "ProdCert", the entity making the request must have permission on
    # "ProductionCert" and "ProdCert", or must have permission on all
    # (*). For more information about permissions, see [Access
    # Management][3] in the *IAM User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts
    # [3]: http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html
    #
    # @option params [required, String] :server_certificate_name
    #   The name of the server certificate that you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :new_path
    #   The new path for the server certificate. Include this only if you are
    #   updating the server certificate's path.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :new_server_certificate_name
    #   The new name for the server certificate. Include this only if you are
    #   updating the server certificate's name. The name of the certificate
    #   cannot contain any spaces.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server_certificate({
    #     server_certificate_name: "serverCertificateNameType", # required
    #     new_path: "pathType",
    #     new_server_certificate_name: "serverCertificateNameType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateServerCertificate AWS API Documentation
    #
    # @overload update_server_certificate(params = {})
    # @param [Hash] params ({})
    def update_server_certificate(params = {}, options = {})
      req = build_request(:update_server_certificate, params)
      req.send_request(options)
    end

    # Sets the status of a service-specific credential to `Active` or
    # `Inactive`. Service-specific credentials that are inactive cannot be
    # used for authentication to the service. This action can be used to
    # disable a user’s service-specific credential as part of a credential
    # rotation work flow.
    #
    # @option params [String] :user_name
    #   The name of the IAM user associated with the service-specific
    #   credential. If you do not specify this value, then the operation
    #   assumes the user whose credentials are used to call the operation.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :service_specific_credential_id
    #   The unique identifier of the service-specific credential.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :status
    #   The status to be assigned to the service-specific credential.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_specific_credential({
    #     user_name: "userNameType",
    #     service_specific_credential_id: "serviceSpecificCredentialId", # required
    #     status: "Active", # required, accepts Active, Inactive
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateServiceSpecificCredential AWS API Documentation
    #
    # @overload update_service_specific_credential(params = {})
    # @param [Hash] params ({})
    def update_service_specific_credential(params = {}, options = {})
      req = build_request(:update_service_specific_credential, params)
      req.send_request(options)
    end

    # Changes the status of the specified user signing certificate from
    # active to disabled, or vice versa. This action can be used to disable
    # an IAM user's signing certificate as part of a certificate rotation
    # work flow.
    #
    # If the `UserName` field is not specified, the UserName is determined
    # implicitly based on the AWS access key ID used to sign the request.
    # Because this action works for access keys under the AWS account, you
    # can use this action to manage root credentials even if the AWS account
    # has no associated users.
    #
    # @option params [String] :user_name
    #   The name of the IAM user the signing certificate belongs to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :certificate_id
    #   The ID of the signing certificate you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :status
    #   The status you want to assign to the certificate. `Active` means the
    #   certificate can be used for API calls to AWS, while `Inactive` means
    #   the certificate cannot be used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_signing_certificate({
    #     user_name: "existingUserNameType",
    #     certificate_id: "certificateIdType", # required
    #     status: "Active", # required, accepts Active, Inactive
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSigningCertificate AWS API Documentation
    #
    # @overload update_signing_certificate(params = {})
    # @param [Hash] params ({})
    def update_signing_certificate(params = {}, options = {})
      req = build_request(:update_signing_certificate, params)
      req.send_request(options)
    end

    # Updates the name and/or the path of the specified IAM user.
    #
    # You should understand the implications of changing an IAM user's path
    # or name. For more information, see [Renaming an IAM User][1] and
    # [Renaming an IAM Group][2] in the *IAM User Guide*.
    #
    # <note markdown="1"> To change a user name the requester must have appropriate permissions
    # on both the source object and the target object. For example, to
    # change Bob to Robert, the entity making the request must have
    # permission on Bob and Robert, or must have permission on all (*). For
    # more information about permissions, see [Permissions and Policies][3].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html
    # [3]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html
    #
    # @option params [required, String] :user_name
    #   Name of the user to update. If you're changing the name of the user,
    #   this is the original user name.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :new_path
    #   New path for the IAM user. Include this parameter only if you're
    #   changing the user's path.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :new_user_name
    #   New name for the user. Include this parameter only if you're changing
    #   the user's name.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     user_name: "existingUserNameType", # required
    #     new_path: "pathType",
    #     new_user_name: "userNameType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
      req.send_request(options)
    end

    # Uploads an SSH public key and associates it with the specified IAM
    # user.
    #
    # The SSH public key uploaded by this action can be used only for
    # authenticating the associated IAM user to an AWS CodeCommit
    # repository. For more information about using SSH keys to authenticate
    # to an AWS CodeCommit repository, see [Set up AWS CodeCommit for SSH
    # Connections][1] in the *AWS CodeCommit User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
    #
    # @option params [required, String] :user_name
    #   The name of the IAM user to associate the SSH public key with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :ssh_public_key_body
    #   The SSH public key. The public key must be encoded in ssh-rsa format
    #   or PEM format.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::UploadSSHPublicKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UploadSSHPublicKeyResponse#ssh_public_key #ssh_public_key} => Types::SSHPublicKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_ssh_public_key({
    #     user_name: "userNameType", # required
    #     ssh_public_key_body: "publicKeyMaterialType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ssh_public_key.user_name #=> String
    #   resp.ssh_public_key.ssh_public_key_id #=> String
    #   resp.ssh_public_key.fingerprint #=> String
    #   resp.ssh_public_key.ssh_public_key_body #=> String
    #   resp.ssh_public_key.status #=> String, one of "Active", "Inactive"
    #   resp.ssh_public_key.upload_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSSHPublicKey AWS API Documentation
    #
    # @overload upload_ssh_public_key(params = {})
    # @param [Hash] params ({})
    def upload_ssh_public_key(params = {}, options = {})
      req = build_request(:upload_ssh_public_key, params)
      req.send_request(options)
    end

    # Uploads a server certificate entity for the AWS account. The server
    # certificate entity includes a public key certificate, a private key,
    # and an optional certificate chain, which should all be PEM-encoded.
    #
    # We recommend that you use [AWS Certificate Manager][1] to provision,
    # manage, and deploy your server certificates. With ACM you can request
    # a certificate, deploy it to AWS resources, and let ACM handle
    # certificate renewals for you. Certificates provided by ACM are free.
    # For more information about using ACM, see the [AWS Certificate Manager
    # User Guide][2].
    #
    # For more information about working with server certificates, including
    # a list of AWS services that can use the server certificates that you
    # manage with IAM, go to [Working with Server Certificates][3] in the
    # *IAM User Guide*.
    #
    # For information about the number of server certificates you can
    # upload, see [Limitations on IAM Entities and Objects][4] in the *IAM
    # User Guide*.
    #
    # <note markdown="1"> Because the body of the public key certificate, private key, and the
    # certificate chain can be large, you should use POST rather than GET
    # when calling `UploadServerCertificate`. For information about setting
    # up signatures and authorization through the API, go to [Signing AWS
    # API Requests][5] in the *AWS General Reference*. For general
    # information about using the Query API with IAM, go to [Calling the API
    # by Making HTTP Query Requests][6] in the *IAM User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/certificate-manager/
    # [2]: http://docs.aws.amazon.com/acm/latest/userguide/
    # [3]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
    # [4]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html
    # [5]: http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html
    # [6]: http://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html
    #
    # @option params [String] :path
    #   The path for the server certificate. For more information about paths,
    #   see [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/). This paramater allows (per its [regex pattern][2]) a string
    #   of characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #   <note markdown="1"> If you are uploading a server certificate specifically for use with
    #   Amazon CloudFront distributions, you must specify a path using the
    #   `--path` option. The path must begin with `/cloudfront` and must
    #   include a trailing slash (for example, `/cloudfront/test/`).
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :server_certificate_name
    #   The name for the server certificate. Do not include the path in this
    #   value. The name of the certificate cannot contain any spaces.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :certificate_body
    #   The contents of the public key certificate in PEM-encoded format.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :private_key
    #   The contents of the private key in PEM-encoded format.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :certificate_chain
    #   The contents of the certificate chain. This is typically a
    #   concatenation of the PEM-encoded public key certificates of the chain.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::UploadServerCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UploadServerCertificateResponse#server_certificate_metadata #server_certificate_metadata} => Types::ServerCertificateMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_server_certificate({
    #     path: "pathType",
    #     server_certificate_name: "serverCertificateNameType", # required
    #     certificate_body: "certificateBodyType", # required
    #     private_key: "privateKeyType", # required
    #     certificate_chain: "certificateChainType",
    #   })
    #
    # @example Response structure
    #
    #   resp.server_certificate_metadata.path #=> String
    #   resp.server_certificate_metadata.server_certificate_name #=> String
    #   resp.server_certificate_metadata.server_certificate_id #=> String
    #   resp.server_certificate_metadata.arn #=> String
    #   resp.server_certificate_metadata.upload_date #=> Time
    #   resp.server_certificate_metadata.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadServerCertificate AWS API Documentation
    #
    # @overload upload_server_certificate(params = {})
    # @param [Hash] params ({})
    def upload_server_certificate(params = {}, options = {})
      req = build_request(:upload_server_certificate, params)
      req.send_request(options)
    end

    # Uploads an X.509 signing certificate and associates it with the
    # specified IAM user. Some AWS services use X.509 signing certificates
    # to validate requests that are signed with a corresponding private key.
    # When you upload the certificate, its default status is `Active`.
    #
    # If the `UserName` field is not specified, the IAM user name is
    # determined implicitly based on the AWS access key ID used to sign the
    # request. Because this action works for access keys under the AWS
    # account, you can use this action to manage root credentials even if
    # the AWS account has no associated users.
    #
    # <note markdown="1"> Because the body of a X.509 certificate can be large, you should use
    # POST rather than GET when calling `UploadSigningCertificate`. For
    # information about setting up signatures and authorization through the
    # API, go to [Signing AWS API Requests][1] in the *AWS General
    # Reference*. For general information about using the Query API with
    # IAM, go to [Making Query Requests][2] in the *IAM User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html
    #
    # @option params [String] :user_name
    #   The name of the user the signing certificate is for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :certificate_body
    #   The contents of the signing certificate.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::UploadSigningCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UploadSigningCertificateResponse#certificate #certificate} => Types::SigningCertificate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_signing_certificate({
    #     user_name: "existingUserNameType",
    #     certificate_body: "certificateBodyType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate.user_name #=> String
    #   resp.certificate.certificate_id #=> String
    #   resp.certificate.certificate_body #=> String
    #   resp.certificate.status #=> String, one of "Active", "Inactive"
    #   resp.certificate.upload_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSigningCertificate AWS API Documentation
    #
    # @overload upload_signing_certificate(params = {})
    # @param [Hash] params ({})
    def upload_signing_certificate(params = {}, options = {})
      req = build_request(:upload_signing_certificate, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-iam'
      context[:gem_version] = '1.0.0.rc3'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name             | params                  | :delay   | :max_attempts |
    # | ----------------------- | ----------------------- | -------- | ------------- |
    # | instance_profile_exists | {#get_instance_profile} | 1        | 40            |
    # | user_exists             | {#get_user}             | 1        | 20            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        instance_profile_exists: Waiters::InstanceProfileExists,
        user_exists: Waiters::UserExists
      }
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
