import aws_cdk as core
import aws_cdk.assertions as assertions

from epona.epona_stack import EponaStack

# example tests. To run these tests, uncomment this file along with the example
# resource in epona/epona_stack.py
def test_sqs_queue_created():
    app = core.App()
    stack = EponaStack(app, "epona")
    template = assertions.Template.from_stack(stack)

#     template.has_resource_properties("AWS::SQS::Queue", {
#         "VisibilityTimeout": 300
#     })
